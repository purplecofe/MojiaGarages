# Updates to qb-core versions after April 26 will not be supported, any modifications to be compatible with qb-core versions after that time will be made by everyone themselves.
# MojiaGarages
🅿 Best advanced garages for QB-Core Framework 🅿

[Change Log](CHANGELOG.md)
## Dependencies:
- [qb-core](https://github.com/qbcore-framework/qb-core) -Main framework
- [PolyZone](https://github.com/qbcore-framework/PolyZone) -Needed for garages zone
- [qb-menu](https://github.com/qbcore-framework/qb-menu) -Needed for garages menu
- [qb-houses](https://github.com/qbcore-framework/qb-houses) -Needed for apartment garages
- [qb-vehiclekeys](https://github.com/qbcore-framework/qb-vehiclekeys) -Needed for vehicle owner check

## Preview & tutorials:
[Preview and guide to installing a new garage - Youtube](https://youtu.be/1ECZIyZEmhY)

[Instructions for installing MojiaGarages on the original QB-Core - Youtube](https://youtu.be/C01WwrdL670)

[Real Life Parking Update](https://youtu.be/Llb7EdISVj0)

## Features(All in one):
- Park and taken out the vehicle as long as it's in the garage area
- When the vehicle is taken out, it will appear at the nearest parking line
- Depot system
- Impound system
- Separate parking system for each gang
- Vehicle for Work system(Planes, cars, boats...)
- In the Vehicle for Work system, You need to return the previously received vehicle before you can get a new one
- Items are available in the trunk of the vehicle for industries in the vehicle system for work
- Private parking at the headquarters of each profession
- Private parking for each apartment
- Automatically save coordinates, vehicle status
- Auto spawn car in its last position, if there are players nearby
- Depot only contains vehicles with fines greater than 0
- support multiple languages
- You can translate through your language easily through `lang.lua`
- Easy configuration via `config.lua`

## Installation:

### Manual:
- Download the script and put it in the `resources` directory.
- Add the following code to your server.cfg/resouces.cfg
```
ensure MojiaGarages
```
### Important Note:
All garage data of pre-existing homes will not be compatible with this garage, you need to delete those garages and create new ones. When creating a new garage, you need to be on a vehicle.
### Edit the resources according to the following instructions:
#### qb-vehiclesales:
- Edit qb-vehiclesales\client\main.lua:
```
local function SellToDealer(sellVehData, vehicleHash)
    CreateThread(function()
        local keepGoing = true
        while keepGoing do
            local coords = GetEntityCoords(vehicleHash)
            DrawText3Ds(coords.x, coords.y, coords.z + 1.6, '~g~7~w~ - Confirm / ~r~8~w~ - Cancel ~g~')
            if IsDisabledControlJustPressed(0, 161) then
                TriggerServerEvent('qb-occasions:server:sellVehicleBack', sellVehData)
                local plate = QBCore.Functions.GetPlate(vehicleHash)
                TriggerServerEvent('MojiaGarages:server:removeOutsideVehicles', plate)
                QBCore.Functions.DeleteVehicle(vehicleHash)
                keepGoing = false
            end
            if IsDisabledControlJustPressed(0, 162) then
                keepGoing = false
            end
            if #(Config.SellVehicleBack - coords) > 3 then
                keepGoing = false
            end
            Wait(0)
        end
    end)
end
```

```
local function sellVehicleWait(price)
    DoScreenFadeOut(250)
    Wait(250)
    local vehicle = GetVehiclePedIsIn(PlayerPedId())
    local plate = QBCore.Functions.GetPlate(vehicle)
    TriggerServerEvent('MojiaGarages:server:removeOutsideVehicles', plate)
    QBCore.Functions.DeleteVehicle(vehicle)
    Wait(1500)
    DoScreenFadeIn(250)
    QBCore.Functions.Notify('Your car has been put up for sale! Price - $'..price, 'success')
    PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
end
```

#### qb-phone:
- Edit qb-phone\fxmanifest.lua:
```
shared_scripts {
    'config.lua',
    '@qb-apartments/config.lua',
    '@MojiaGarages/config.lua',
}
```
- Edit qb-phone\client\main.lua:
```
RegisterNUICallback('track-vehicle', function(data, cb)
    local veh = data.veh
    TriggerEvent('MojiaGarages:client:trackVehicle', veh.plate)
end)
```
#### qb-policejob:
- Edit qb-policejob\client\job.lua:
```
RegisterNetEvent('police:client:ImpoundVehicle', function(fullImpound, price)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local bodyDamage = math.ceil(GetVehicleBodyHealth(vehicle))
    local engineDamage = math.ceil(GetVehicleEngineHealth(vehicle))
    local totalFuel = exports['ps-fuel']:GetFuel(vehicle)
    if vehicle ~= 0 and vehicle then
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local vehpos = GetEntityCoords(vehicle)
        if #(pos - vehpos) < 5.0 and not IsPedInAnyVehicle(ped) then
            local plate = QBCore.Functions.GetPlate(vehicle)
            TriggerServerEvent("police:server:Impound", plate, fullImpound, price, bodyDamage, engineDamage, totalFuel)			
            QBCore.Functions.DeleteVehicle(vehicle)
            TriggerServerEvent('MojiaGarages:server:removeOutsideVehicles', plate)
        end
    end
end)
```

#### qb-houses:

- Edit qb-houses\client\main.lua:
```
local function SetClosestHouse()
    local pos = GetEntityCoords(PlayerPedId(), true)
    local current = nil
    local dist = nil
    if not IsInside then
        for id, house in pairs(Config.Houses) do
            local distcheck = #(pos - vector3(Config.Houses[id].coords.enter.x, Config.Houses[id].coords.enter.y, Config.Houses[id].coords.enter.z))
            if current ~= nil then
                if distcheck < dist then
                    current = id
                    dist = distcheck
                end
            else
                dist = distcheck
                current = id
            end
        end
        ClosestHouse = current
        if ClosestHouse ~= nil and tonumber(dist) < 30 then
            QBCore.Functions.TriggerCallback('qb-houses:server:ProximityKO', function(key, owned)
                HasHouseKey = key
                isOwned = owned
            end, ClosestHouse)
        end
    end
end
```

```
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent('qb-houses:client:setHouses')
    SetClosestHouse()
    TriggerEvent('qb-houses:client:setupHouseBlips')
    if Config.UnownedBlips then TriggerEvent('qb-houses:client:setupHouseBlips2') end
    Wait(100)
    TriggerServerEvent("qb-houses:server:setHouses")
end)
```

```
RegisterNetEvent('qb-houses:client:createHouses', function(apartmentnumber, price, tier)
    local pos = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(PlayerPedId())
	local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
    local street = GetStreetNameFromHashKey(s1)
    local coords = {
        enter 	= { x = pos.x, y = pos.y, z = pos.z, h = heading},
        cam 	= { x = pos.x, y = pos.y, z = pos.z, h = heading, yaw = -10.00},
    }
    street = 'No. ' .. apartmentnumber .. ' ' .. street:gsub('%-', ' ')
    TriggerServerEvent('qb-houses:server:addNewHouse', street, coords, price, tier)
    if Config.UnownedBlips then TriggerServerEvent('qb-houses:server:createBlip') end
end)
```

```
RegisterNetEvent('qb-houses:client:addGarage', function()
    if ClosestHouse ~= nil then
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then            
            local veh = GetVehiclePedIsIn(ped)
			local vehpos = GetEntityCoords(veh)
			local x = QBCore.Shared.Round(vehpos.x, 2)
			local y = QBCore.Shared.Round(vehpos.y, 2)
			local z = QBCore.Shared.Round(vehpos.z, 2)
			local heading = GetEntityHeading(veh)
			local h = QBCore.Shared.Round(heading, 2)
			local forward, right, up, pos = GetEntityMatrix(veh)
			local x1 = QBCore.Shared.Round(pos.x + (forward.x * (3.0)) + (right.x * (2.0)), 2)
			local y1 = QBCore.Shared.Round(pos.y + (forward.y * (3.0)) + (right.y * (2.0)), 2)
			local x2 = QBCore.Shared.Round(pos.x + (forward.x * (-3.0)) + (right.x * (2.0)), 2)
			local y2 = QBCore.Shared.Round(pos.y + (forward.y * (-3.0)) + (right.y * (2.0)), 2)
			local x3 = QBCore.Shared.Round(pos.x + (forward.x * (-3.0)) + (right.x * (-2.0)), 2)
			local y3 = QBCore.Shared.Round(pos.y + (forward.y * (-3.0)) + (right.y * (-2.0)), 2)
			local x4 = QBCore.Shared.Round(pos.x + (forward.x * (3.0)) + (right.x * (-2.0)), 2)
			local y4 = QBCore.Shared.Round(pos.y + (forward.y * (3.0)) + (right.y * (-2.0)), 2)
            local coords = {
                x = x,
				y = y,
				z = z,
				h = h,
				x1 = x1,
				y1 = y1,
				x2 = x2,
				y2 = y2,
				x3 = x3,
				y3 = y3,
				x4 = x4,
				y4 = y4,
            }
            TriggerServerEvent('qb-houses:server:addGarage', ClosestHouse, coords)
        else
            QBCore.Functions.Notify("You need to be in the vehicle..", "error")
        end
    else
        QBCore.Functions.Notify("No house around..", "error")
    end
end)
```

```
CreateThread(function()
    Wait(1000)
    TriggerServerEvent('qb-houses:client:setHouses')
    SetClosestHouse()
    TriggerEvent('qb-houses:client:setupHouseBlips')
    if Config.UnownedBlips then TriggerEvent('qb-houses:client:setupHouseBlips2') end
    Wait(100)
    TriggerServerEvent("qb-houses:server:setHouses")
end)
```

- Edit qb-houses\server\main.lua:
```
CreateThread(function()
    local result = MySQL.Sync.fetchAll('SELECT * FROM houselocations', {})
    if result[1] then
        for k, v in pairs(result) do
            local owned = false
            if tonumber(v.owned) == 1 then
                owned = true
            end
            local garage = json.decode(v.garage) or {}
            Config.Houses[v.name] = {
                coords = json.decode(v.coords),
                owned = v.owned,
                price = v.price,
                locked = true,
                adress = v.label,
                tier = v.tier,
                garage = garage,
                decorations = {}
            }
        end
    end
    TriggerClientEvent("qb-houses:client:setHouseConfig", -1, Config.Houses)
end)
```

```
QBCore.Commands.Add("createhouse", "Create House (Real Estate Only)", {{name = "apartmentnumber", help = "Apartment number"}, {name = "price", help = "Price of the house"}, {name = "tier", help = "Name of the item(no label)"}}, true, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local apartmentnumber = tonumber(args[1])
    local price = tonumber(args[2])
    local tier = tonumber(args[3])
    if Player.PlayerData.job.name == "realestate" then
        TriggerClientEvent("qb-houses:client:createHouses", src, apartmentnumber, price, tier)
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t("error.realestate_only"), "error")
    end
end)
```

```
RegisterNetEvent('qb-houses:server:addNewHouse', function(street, coords, price, tier)
    local src = source
    local street = street:gsub("%'", "")
    local price = tonumber(price)
    local tier = tonumber(tier)
	local name = street:lower()
    local label = street
    MySQL.Async.insert('INSERT INTO houselocations (name, label, coords, owned, price, tier) VALUES (?, ?, ?, ?, ?, ?)',
        {name, label, json.encode(coords), 0, price, tier})
    Config.Houses[name] = {
        coords = coords,
        owned = false,
        price = price,
        locked = true,
        adress = label,
        tier = tier,
        garage = {},
        decorations = {}
    }
    TriggerClientEvent("qb-houses:client:setHouseConfig", -1, Config.Houses)
    TriggerClientEvent('QBCore:Notify', src, "You have added a house: " .. label)
    TriggerEvent('qb-log:server:CreateLog', 'house', 'House Created:', 'green', '**Address**:\n'..label..'\n\n**Listing Price**:\n$'..price..'\n\n**Tier**:\n'..tier..'\n\n**Listing Agent**:\n'..GetPlayerName(src))
end)
```

```
RegisterNetEvent('qb-houses:server:addGarage', function(house, coords)
    local src = source
    MySQL.Async.execute('UPDATE houselocations SET garage = ? WHERE name = ?', {json.encode(coords), house})
    TriggerClientEvent("MojiaGarages:client:updateGarage", -1) 	-- Update Garages
    TriggerClientEvent('QBCore:Notify', src, "You have added a garage: " .. Config.Houses[house].adress)
end)
```

```
RegisterNetEvent('qb-houses:server:buyHouse', function(house)
    local src = source
    local pData = QBCore.Functions.GetPlayer(src)
    local price = Config.Houses[house].price
    local HousePrice = math.ceil(price * 1.21)
    local bankBalance = pData.PlayerData.money["bank"]

    if (bankBalance >= HousePrice) then
        houseowneridentifier[house] = pData.PlayerData.license
        houseownercid[house] = pData.PlayerData.citizenid
        housekeyholders[house] = {
            [1] = pData.PlayerData.citizenid
        }
        MySQL.Async.insert('INSERT INTO player_houses (house, identifier, citizenid, keyholders) VALUES (?, ?, ?, ?)',{house, pData.PlayerData.license, pData.PlayerData.citizenid, json.encode(housekeyholders[house])})
        MySQL.Async.execute('UPDATE houselocations SET owned = ? WHERE name = ?', {1, house})
        TriggerClientEvent('qb-houses:client:SetClosestHouse', src)
        pData.Functions.RemoveMoney('bank', HousePrice, "bought-house") -- 21% Extra house costs
        TriggerEvent('qb-bossmenu:server:addAccountMoney', "realestate", (HousePrice / 100) * math.random(18, 25))
        TriggerEvent('qb-log:server:CreateLog', 'house', 'House Purchased:', 'green', '**Address**:\n'..house:upper()..'\n\n**Purchase Price**:\n$'..HousePrice..'\n\n**Purchaser**:\n'..pData.PlayerData.charinfo.firstname..' '..pData.PlayerData.charinfo.lastname)
		TriggerClientEvent("MojiaGarages:client:updateGarage", -1) 	-- Update Garages	
	else
        TriggerClientEvent('QBCore:Notify', source, "You dont have enough money..", "error")
    end
end)
```
#### qb-vehiclekeys:
- Add event to  qb-vehiclekeys\client\main.lua:
```
RegisterNetEvent('MojiaGarages:client:updateVehicleKey', function() -- Update vehicle key for qb-vehiclekey
	GetKeys()
end)

-- Goto exports('HasKeys', HasKeys) And move it under the function HasKeys. Like this

function HasKeys(plate)
    return KeysList[plate]
end
exports('HasKeys', HasKeys)

```
### Event for F1 menu:
#### qb-radialmenu:

- Add to qb-radialmenu/client/main.lua:
```
local garaIndex = nil
local function SetupGaragesMenu()
    local isingarage, canStoreVehicle = exports["MojiaGarages"]:IsInGarage()
	local isInJobGarage, lastJobVehicle = exports["MojiaGarages"]:isInJobStation(PlayerData.job.name)
	local GaragesMenu = {
        id = 'garages',
        title = 'Garages',
        icon = 'warehouse',
        items = {}
    }
	if isingarage then
		GaragesMenu.items[#GaragesMenu.items+1] = {
			id = 'opengarage',
			title = 'Open Garage',
			icon = 'warehouse',
			type = 'client',
			event = 'MojiaGarages:client:openGarage',
			shouldClose = true,
		}
		local veh = nil
		local ped = PlayerPedId()
		local pos = GetEntityCoords(ped)
		local vehout, distance = QBCore.Functions.GetClosestVehicle(pos)
		local vehin = IsPedInAnyVehicle(ped, true)
		if vehin then
			veh = GetVehiclePedIsIn(ped)
		else
			if NetworkGetEntityIsLocal(vehout) and distance <= 5 then
				veh = vehout
			end
		end
		if veh ~= nil then
			local plate = QBCore.Functions.GetPlate(veh)
			if exports["qb-vehiclekeys"]:HasKeys(plate) then
				if canStoreVehicle then
					GaragesMenu.items[#GaragesMenu.items+1] = {
						id = 'storeVehicle',
						title = 'Store Vehicle',
						icon = 'parking',
						type = 'client',
						event = 'MojiaGarages:client:storeVehicle',
						shouldClose = true,
					}
				end
			end
		end
	end
	if isInJobGarage then
		if lastJobVehicle == nil then
			GaragesMenu.items[#GaragesMenu.items+1] = {
				id = 'openjobgarage',
				title = 'Open Job Garage',
				icon = 'warehouse',
				type = 'client',
				event = 'MojiaGarages:client:openJobVehList',
				shouldClose = true,
			}
		else
			local veh = nil
			local ped = PlayerPedId()
			local pos = GetEntityCoords(ped)
			local vehout, distance = QBCore.Functions.GetClosestVehicle(pos)
			local vehin = IsPedInAnyVehicle(ped, true)
			if vehin then
				veh = GetVehiclePedIsIn(ped)
			else
				if NetworkGetEntityIsLocal(vehout) and distance <= 5 then
					veh = vehout
				end
			end
			if veh ~= nil and veh == lastJobVehicle then
				local plate = QBCore.Functions.GetPlate(veh)
				if exports["qb-vehiclekeys"]:HasKeys(plate) then --disable if use MojiaVehicleKeys
			--if exports['MojiaVehicleKeys']:CheckHasKey(plate) then --enable if use MojiaVehicleKeys
					GaragesMenu.items[#GaragesMenu.items+1] = {
						id = 'hidejobvehicle',
						title = 'Hide Job Vehicle',
						icon = 'parking',
						type = 'client',
						event = 'MojiaGarages:client:HideJobVeh',
						shouldClose = true,
					}
				end
			end
		end
	end
    if #GaragesMenu.items == 0 then
        if garaIndex then
            RemoveOption(garaIndex)
            garaIndex = nil
        end
    else
        garaIndex = AddOption(GaragesMenu, garaIndex)
    end
end
```
- Edit qb-radialmenu/client/main.lua:
```
local function SetupSubItems()
    SetupJobMenu()
    SetupVehicleMenu()
	SetupGaragesMenu()
end
```
#### Other Menu:
##### Open Garage:
- Event:
```
'MojiaGarages:client:openGarage'
```
- Enable Menu(If your radial menu can enable/hide button):
```
local isingarage, canStoreVehicle = exports["MojiaGarages"]:IsInGarage()
```
isingarage → check if you are in the garage area → True|False → you can use:
```
if isingarage then
```
canStoreVehicle → check if the garage allows parking → True|False →  don't need it.

Check if you are in the vehicle or not → you can use:
```
if not IsPedInAnyVehicle(PlayerPedId()) then
```
##### Store Vehicle:
- Event:
```
'MojiaGarages:client:storeVehicle'
```
- Enable Menu(If your radial menu can enable/hide button):
```
local isingarage, canStoreVehicle = exports["MojiaGarages"]:IsInGarage()
```
isingarage → check if you are in the garage area → True|False → you can use:
```
if isingarage then
```
canStoreVehicle → check if the garage allows parking → True|False →  you can use:
```
if canStoreVehicle then
```
You should have more vehicle key check function here:
```
if exports["qb-vehiclekeys"]:HasKeys(plate) then
```
##### Open vehicle list for work:
- Event:
```
'MojiaGarages:client:openJobVehList'
```
- Enable Menu(If your radial menu can enable/hide button):
```
isInJobGarage, lastJobVehicle = exports["MojiaGarages"]:isInJobStation('your job')
```
isInJobGarage → check if you are in the garage area → True|False → you can use:
```
if isInJobGarage then
```
lastJobVehicle → return vehicle or nil →  you can use:
```
if lastJobVehicle == nil then
```
Check if you are in the vehicle or not → you can use:
```
if not IsPedInAnyVehicle(PlayerPedId()) then
```

##### Hide vehicle for work:
- Event:
```
'MojiaGarages:client:HideJobVeh'
```
- Enable Menu(If your radial menu can enable/hide button):
```
isInJobGarage, lastJobVehicle = exports["MojiaGarages"]:isInJobStation('your job')
```
isInJobGarage → check if you are in the garage area → True|False → you can use:
```
if isInJobGarage then
```
lastJobVehicle → return vehicle or nil →  you can use:
```
if lastJobVehicle ~= nil then
```
You should have more vehicle key check function here:
```
if exports["qb-vehiclekeys"]:HasKeys(plate) then
```
### In progress:
- Parking system for boats
- Parking system for planes

## My other scripts:
- [MojiaVehicleKeys](https://github.com/hoangducdt/MojiaVehicleKeys) -Best VehicleKeys for QB-Core Framework
- [driverschool](https://github.com/hoangducdt/driverschool) -Best driving school for qb-core framework

## Note:
- This script is completely free for community, it is strictly forbidden to use this script for commercial purposes.
- If you want to offer me a cup of coffee, you can donate to me through:
    [https://www.buymeacoffee.com/hoangducdt](https://www.buymeacoffee.com/hoangducdt)
    or [paypal.me/hoangducdt](paypal.me/hoangducdt)
- Follow me on [My Github](https://github.com/hoangducdt) or subscribe to [My Youtube Channel](https://www.youtube.com/channel/UCFIsOgj9zvEWAwFTPRT5mbQ) for latest updates
- My Discord: ✯✯✯✯✯#8386
- My Discord Channel: [https://discord.gg/hD3EFzpjfq](https://discord.gg/hD3EFzpjfq)
