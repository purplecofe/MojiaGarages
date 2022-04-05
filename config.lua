-- This controls when a vehicle will be impounded
-- calling the cleanup function (in hours; so 24 * 7 = one week)
cleanUpThresholdTime = 24
-- this controls the distance at which vehicles will spawn to the closest player
-- (in meters)
spawnDistance = 200.0

Realparking = false -- Controle Realparking True or false if false it return cars to garage on server restart

Realdepot = 250 -- price depot when realparking is false has to be higher then 0

UsingMojiaVehiclekeys = false

-- set this to false if you do not want entities render as scorched when they
-- are completely broken
renderScorched = true

CustomFont = nil --[nil]: use system default font - or ['name of your custom font']: You need your_custum_font.gfx EX: CustomFont = 'Oswald'

Garages = {
        --Public Garage:
        ['garage1'] = {
            label = '1號車庫',
            spawnPoint = {
                vector4(206.23, -801.1, 30.59, 247.96),
                vector4(207.08, -798.56, 30.58, 249.69),
                vector4(207.59, -795.94, 30.57, 249.22),
                vector4(208.9, -793.62, 30.54, 249.01),
                vector4(209.81, -791.03, 30.43, 249.12),
                vector4(211.0, -788.67, 30.41, 250.06),
                vector4(211.8, -786.14, 30.4, 248.84),
                vector4(212.84, -783.64, 30.38, 248.82),
                vector4(213.5, -780.96, 30.38, 249.33),
                vector4(214.52, -778.56, 30.36, 249.65),
                vector4(215.31, -776.03, 30.36, 248.74),
                vector4(216.24, -773.45, 30.35, 249.48),
                vector4(217.16, -770.93, 30.34, 249.41),
                vector4(218.24, -768.39, 30.33, 249.65),
                vector4(219.11, -765.91, 30.33, 249.15),
                vector4(215.52, -804.27, 30.3, 68.36),
                vector4(216.35, -801.81, 30.29, 68.48),
                vector4(217.24, -799.24, 30.28, 67.86),
                vector4(218.29, -796.78, 30.26, 69.31),
                vector4(219.15, -794.27, 30.26, 68.23),
                vector4(219.98, -791.78, 30.25, 69.22),
                vector4(220.97, -789.2, 30.26, 69.14),
                vector4(222.05, -786.8, 30.26, 68.47),
                vector4(222.81, -784.2, 30.26, 68.58),
                vector4(223.83, -781.72, 30.25, 69.18),
                vector4(224.7, -779.18, 30.25, 69.5),
                vector4(225.6, -776.59, 30.26, 69.24),
                vector4(226.44, -774.07, 30.27, 69.49),
                vector4(227.47, -771.51, 30.28, 69.25),
                vector4(228.45, -768.96, 30.28, 68.75),
                vector4(234.05, -771.25, 30.25, 249.19),
                vector4(232.97, -773.78, 30.24, 249.46),
                vector4(232.02, -776.31, 30.22, 248.38),
                vector4(231.0, -778.83, 30.21, 249.91),
                vector4(230.25, -781.48, 30.2, 248.73),
                vector4(229.43, -784.06, 30.2, 248.85),
                vector4(228.08, -786.39, 30.2, 250.22),
                vector4(227.5, -789.0, 30.18, 247.22),
                vector4(226.44, -791.6, 30.17, 248.43),
                vector4(225.76, -794.1, 30.16, 247.9),
                vector4(224.78, -796.6, 30.16, 248.61),
                vector4(223.65, -799.13, 30.16, 247.99),
                vector4(222.98, -801.71, 30.16, 248.58),
                vector4(222.07, -804.26, 30.17, 248.08),
                vector4(221.01, -806.6, 30.18, 246.65),
                vector4(220.06, -809.14, 30.17, 250.28),
                vector4(231.11, -810.38, 29.93, 69.45),
                vector4(232.4, -807.98, 29.93, 67.34),
                vector4(233.3, -805.31, 29.94, 68.21),
                vector4(234.24, -802.91, 29.95, 69.57),
                vector4(234.92, -800.24, 29.97, 68.36),
                vector4(236.01, -797.77, 29.98, 68.12),
                vector4(236.95, -795.24, 29.99, 69.34),
                vector4(237.67, -792.62, 30.01, 68.81),
                vector4(238.62, -790.11, 30.03, 67.89),
                vector4(239.68, -787.64, 30.05, 68.68),
                vector4(240.5, -785.13, 30.08, 67.26),
                vector4(241.62, -782.54, 30.09, 67.92),
                vector4(242.54, -780.02, 30.12, 67.64),
                vector4(243.36, -777.49, 30.15, 67.48),
                vector4(244.37, -774.98, 30.18, 68.61),
                vector4(245.35, -772.41, 30.2, 68.42),
            },
            blippoint = vector3(215.82, -808.8, 30.75),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(239.94, -820.54),
                vector2(200.06, -805.75),
                vector2(226.43, -733.09),
                vector2(271.99, -748.68),
            },
            minz = 29.02,
            maxz = 39.92,
        },
        ['garage2'] = {
            label = '2號車庫',
            spawnPoint = {
                vector4(-285.63, -887.42, 30.58, 167.42),
                vector4(-289.26, -886.77, 30.58, 167.82),
                vector4(-292.87, -885.89, 30.58, 168.04),
                vector4(-296.51, -885.18, 30.58, 168.64),
                vector4(-300.09, -884.62, 30.58, 167.68),
                vector4(-303.65, -883.59, 30.58, 167.7),
                vector4(-307.46, -882.84, 30.58, 168.26),
                vector4(-310.97, -881.98, 30.58, 168.32),
                vector4(-314.54, -881.39, 30.58, 168.47),
                vector4(-318.18, -880.56, 30.58, 168.63),
                vector4(-321.83, -879.69, 30.57, 167.46),
                vector4(-325.44, -878.98, 30.57, 167.98),
                vector4(-329.04, -878.3, 30.57, 168.62),
                vector4(-332.79, -877.42, 30.57, 169.35),
                vector4(-336.31, -876.62, 30.57, 169.31),
                vector4(-339.89, -875.88, 30.57, 167.38),
                vector4(-343.59, -874.98, 30.57, 166.89),
                vector4(-298.45, -900.06, 30.58, 348.53),
                vector4(-302.28, -899.31, 30.58, 347.61),
                vector4(-305.79, -898.63, 30.58, 348.7),
                vector4(-309.33, -897.29, 30.58, 347.61),
                vector4(-313.05, -897.14, 30.57, 346.85),
                vector4(-316.77, -896.26, 30.57, 348.83),
                vector4(-320.31, -895.01, 30.57, 347.97),
                vector4(-323.92, -894.7, 30.57, 347.1),
                vector4(-327.51, -893.18, 30.57, 347.06),
                vector4(-331.26, -893.34, 30.57, 346.86),
                vector4(-334.58, -891.68, 30.57, 346.23),
                vector4(-338.58, -891.86, 30.57, 346.98),
                vector4(-278.68, -904.58, 30.58, 69.4),
                vector4(-280.46, -907.94, 30.58, 69.35),
                vector4(-281.68, -911.54, 30.58, 70.35),
                vector4(-282.28, -915.08, 30.58, 68.77),
                vector4(-283.51, -918.59, 30.58, 69.06),
                vector4(-285.04, -922.0, 30.58, 69.21),
                vector4(-308.09, -908.72, 30.57, 167.91),
                vector4(-311.73, -907.87, 30.57, 167.65),
                vector4(-315.28, -907.27, 30.57, 167.58),
                vector4(-318.87, -906.68, 30.57, 167.08),
                vector4(-322.57, -905.75, 30.57, 168.37),
                vector4(-326.2, -904.84, 30.57, 167.69),
                vector4(-329.9, -904.41, 30.57, 168.81),
                vector4(-333.38, -903.27, 30.57, 168.42),
                vector4(-337.02, -902.49, 30.57, 167.44),
                vector4(-340.64, -901.94, 30.57, 167.77),
                vector4(-360.67, -889.52, 30.57, 269.16),
                vector4(-360.92, -893.16, 30.57, 269.95),
                vector4(-360.81, -896.99, 30.57, 268.82),
                vector4(-360.78, -900.64, 30.57, 269.85),
                vector4(-361.05, -904.25, 30.57, 269.73),
                vector4(-361.18, -907.93, 30.58, 269.99),
                vector4(-360.82, -911.68, 30.58, 269.71),
                vector4(-360.94, -915.38, 30.58, 268.82),
                vector4(-360.59, -918.94, 30.58, 270.57),
                vector4(-360.56, -922.67, 30.58, 270.39),
                vector4(-360.91, -926.55, 30.58, 269.91),
                vector4(-360.89, -930.15, 30.58, 269.87),
                vector4(-361.04, -933.94, 30.58, 269.7),
                vector4(-360.84, -937.75, 30.58, 269.76),
                vector4(-360.83, -941.29, 30.58, 269.35),
                vector4(-361.08, -945.1, 30.58, 269.89),
                vector4(-360.88, -948.71, 30.58, 269.76),
                vector4(-361.09, -952.47, 30.58, 270.02),
                vector4(-361.07, -956.19, 30.58, 269.17),
                vector4(-341.96, -921.43, 30.58, 250.09),
                vector4(-343.14, -924.89, 30.58, 250.16),
                vector4(-344.51, -928.47, 30.58, 249.3),
                vector4(-345.75, -931.99, 30.58, 249.62),
                vector4(-326.76, -924.54, 30.58, 70.23),
                vector4(-328.79, -927.96, 30.58, 69.52),
                vector4(-329.51, -931.65, 30.58, 69.25),
                vector4(-331.34, -934.79, 30.58, 70.29),
                vector4(-332.08, -938.42, 30.58, 70.47),
                vector4(-333.42, -942.04, 30.58, 69.11),
                vector4(-335.1, -945.31, 30.58, 69.15),
                vector4(-335.65, -949.04, 30.58, 69.56),
                vector4(-337.17, -952.51, 30.58, 69.69),
                vector4(-327.13, -956.11, 30.58, 249.96),
                vector4(-325.9, -952.63, 30.58, 249.94),
                vector4(-324.4, -949.11, 30.58, 249.77),
                vector4(-323.44, -945.59, 30.58, 249.75),
                vector4(-321.58, -942.21, 30.58, 248.69),
                vector4(-321.08, -938.61, 30.58, 248.93),
                vector4(-319.68, -935.15, 30.58, 249.57),
                vector4(-318.2, -931.72, 30.58, 249.07),
                vector4(-317.09, -928.21, 30.58, 248.46),
                vector4(-301.59, -933.56, 30.58, 69.52),
                vector4(-302.96, -937.1, 30.58, 69.64),
                vector4(-304.0, -940.69, 30.58, 69.35),
                vector4(-305.4, -944.11, 30.58, 68.95),
                vector4(-306.93, -947.44, 30.58, 70.04),
                vector4(-308.03, -951.08, 30.58, 68.83),
                vector4(-309.61, -954.41, 30.58, 70.59),
                vector4(-310.9, -957.93, 30.58, 70.45),
                vector4(-312.13, -961.36, 30.58, 69.02),
                vector4(-313.24, -964.93, 30.58, 68.57),
                vector4(-343.13, -974.24, 30.58, 338.77),
                vector4(-339.55, -975.47, 30.58, 339.48),
                vector4(-336.18, -976.83, 30.58, 339.32),
                vector4(-332.71, -978.15, 30.58, 340.41),
                vector4(-329.25, -979.38, 30.58, 340.7),
                vector4(-325.82, -980.76, 30.58, 339.05),
                vector4(-321.96, -981.4, 30.58, 339.23),
                vector4(-318.64, -983.11, 30.58, 340.0),
                vector4(-315.07, -983.88, 30.67, 341.15),
                vector4(-311.73, -985.37, 30.67, 340.05),
                vector4(-308.13, -986.84, 30.67, 341.25),
                vector4(-304.66, -987.8, 30.67, 339.22),
                vector4(-301.37, -989.19, 30.67, 340.01),
                vector4(-297.86, -990.38, 30.67, 339.59),
            },
            blippoint = vector3(-279.12, -888.78, 31.08),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(-277.81, -886.02),
                vector2(-350.82, -870.54),
                vector2(-350.93, -876.85),
                vector2(-364.04, -876.83),
                vector2(-364.02, -960.54),
                vector2(-344.49, -970.1),
                vector2(-346.89, -976.18),
                vector2(-296.06, -994.68),
                vector2(-289.88, -977.25),
                vector2(-311.05, -969.75),
                vector2(-297.59, -932.39),
                vector2(-303.34, -930.45),
                vector2(-298.82, -919.58),
                vector2(-282.72, -925.09),
                vector2(-271.78, -894.83),
                vector2(-280.08, -891.88),
            },
            minz = 30.02,
            maxz = 39.92,
        },
        ['garage3'] = {
            label = '3號車庫',
            spawnPoint = {
                vector4(-20.04, 6322.43, 30.81, 214.79),
                vector4(-17.21, 6324.74, 30.81, 213.2),
                vector4(-14.3, 6327.79, 30.81, 211.19),
                vector4(-11.81, 6330.79, 30.81, 211.78),
                vector4(-8.74, 6333.25, 30.81, 211.04),
                vector4(-6.01, 6336.02, 30.81, 212.07),
                vector4(-3.01, 6338.49, 30.81, 212.77),
                vector4(-0.52, 6341.45, 30.81, 210.88),
                vector4(8.8, 6350.16, 30.8, 213.23),
                vector4(11.52, 6352.45, 30.81, 214.61),
                vector4(14.18, 6355.34, 30.81, 213.35),
                vector4(16.53, 6358.71, 30.81, 213.31),
                vector4(19.5, 6361.34, 30.81, 213.25),
                vector4(22.09, 6364.25, 30.81, 214.15),
                vector4(24.99, 6366.8, 30.81, 215.71),
                vector4(27.46, 6369.72, 30.8, 216.77),
                vector4(36.92, 6379.72, 30.8, 215.88),
                vector4(39.69, 6382.28, 30.8, 213.24),
                vector4(42.52, 6385.25, 30.8, 213.78),
                vector4(45.32, 6388.02, 30.8, 215.21),
                vector4(47.8, 6391.25, 30.8, 215.29),
                vector4(50.5, 6393.8, 30.8, 215.5),
                vector4(59.07, 6400.85, 30.8, 212.88),
                vector4(61.98, 6403.78, 30.8, 214.6),
                vector4(64.5, 6406.48, 30.8, 213.96),
                vector4(72.3, 6404.26, 30.8, 134.14),
                vector4(75.49, 6401.53, 30.8, 133.19),
                vector4(78.47, 6398.85, 30.8, 133.51),
                vector4(81.06, 6396.21, 30.8, 132.19),
                vector4(25.01, 6345.88, 30.82, 29.45),
                vector4(28.1, 6348.46, 30.82, 30.08),
                vector4(31.09, 6351.15, 30.82, 29.55),
                vector4(33.67, 6354.02, 30.82, 28.94),
                vector4(36.56, 6356.59, 30.82, 32.53),
                vector4(39.54, 6358.8, 30.82, 29.31),
                vector4(48.51, 6362.22, 30.82, 215.32),
                vector4(51.56, 6364.81, 30.82, 215.08),
                vector4(54.12, 6368.01, 30.82, 213.84),
                vector4(60.27, 6375.1, 30.82, 33.01),
                vector4(63.1, 6377.56, 30.82, 34.14),
                vector4(66.05, 6380.09, 30.82, 34.37),
                vector4(101.81, 6376.57, 30.8, 13.32),
                vector4(98.43, 6374.35, 30.8, 12.63),
                vector4(94.82, 6373.16, 30.8, 12.64),
                vector4(80.78, 6366.19, 30.81, 13.2),
                vector4(77.31, 6364.31, 30.81, 14.06),
                vector4(73.71, 6362.83, 30.81, 15.21),
                vector4(70.43, 6361.11, 30.81, 12.35),
                vector4(38.04, 6336.57, 30.81, 15.65),
                vector4(34.78, 6334.79, 30.81, 17.61),
                vector4(31.39, 6333.34, 30.81, 16.81),
                vector4(28.05, 6330.96, 30.81, 17.75),
                vector4(24.56, 6329.15, 30.81, 17.15),
                vector4(21.08, 6327.48, 30.81, 17.07),
                vector4(17.77, 6325.31, 30.81, 20.94),
                vector4(14.2, 6323.68, 30.81, 19.47),
                vector4(10.94, 6321.42, 30.81, 17.95),
                vector4(7.68, 6319.52, 30.81, 16.96),
            },
            blippoint = vector3(31.03, 6344.35, 31.24),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(-25.48, 6326.9),
                vector2(66.53, 6418.76),
                vector2(116.84, 6372.94),
                vector2(-12.46, 6300.82),
                vector2(-25.88, 6316.64),
            },
            minz = 30.02,
            maxz = 39.92,
        },
        ['garage4'] = {
            label = '4號車庫',
            spawnPoint = {
                vector4(-2051.56, -449.07, 10.7, 138.06),
                vector4(-2048.95, -450.91, 10.99, 140.17),
                vector4(-2046.74, -453.11, 10.99, 140.07),
                vector4(-2044.43, -455.14, 10.99, 140.21),
                vector4(-2041.97, -456.94, 10.99, 139.14),
                vector4(-2039.65, -458.9, 10.99, 139.63),
                vector4(-2037.23, -460.97, 10.99, 139.94),
                vector4(-2024.05, -471.72, 11.0, 140.57),
                vector4(-2021.91, -473.91, 10.99, 140.19),
                vector4(-2019.39, -475.83, 10.99, 138.86),
                vector4(-2017.03, -477.92, 10.99, 139.09),
                vector4(-2014.77, -480.08, 10.99, 140.76),
                vector4(-2012.35, -481.74, 11.0, 140.24),
                vector4(-2009.88, -483.67, 11.0, 139.83),
                vector4(-2007.55, -485.62, 11.0, 139.12),
                vector4(-2005.09, -487.59, 11.0, 141.51),
                vector4(-2012.74, -496.75, 11.26, 319.58),
                vector4(-2015.28, -494.85, 11.29, 319.16),
                vector4(-2017.65, -492.86, 11.29, 320.25),
                vector4(-2023.92, -487.47, 11.29, 321.63),
                vector4(-2026.46, -485.77, 11.3, 320.46),
                vector4(-2028.76, -483.92, 11.3, 318.77),
                vector4(-2031.17, -481.71, 11.29, 319.29),
                vector4(-2033.57, -479.83, 11.28, 319.82),
                vector4(-2040.22, -474.21, 11.24, 320.26),
                vector4(-2042.61, -472.32, 11.25, 319.1),
                vector4(-2044.83, -470.15, 11.25, 316.9),
                vector4(-2047.07, -467.88, 11.23, 319.1),
                vector4(-2049.58, -465.95, 11.24, 320.25),
                vector4(-2057.0, -459.84, 11.25, 320.6),
                vector4(-2059.41, -458.08, 11.26, 320.18),
                vector4(-2061.93, -456.09, 11.27, 320.9),
                vector4(-2064.64, -453.61, 11.26, 319.91),
            },
            blippoint = vector3(-2032.14, -467.47, 11.38),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(-2006.61, -506.38),
                vector2(-1989.45, -482.25),
                vector2(-2053.05, -430.02),
                vector2(-2071.43, -451.53),
            },
            minz = 10.67,
            maxz = 16.92,
        },
        ['garage5'] = {
            label = '5號車庫',
            spawnPoint = {
                vector4(379.34, 264.98, 102.26, 338.33),
                vector4(375.43, 265.87, 102.6, 336.88),
                vector4(371.6, 267.38, 102.62, 338.23),
                vector4(367.89, 268.58, 102.64, 339.14),
                vector4(363.84, 269.95, 102.65, 339.13),
                vector4(359.71, 271.74, 102.68, 338.85),
                vector4(368.29, 277.12, 102.78, 159.49),
                vector4(371.92, 275.7, 102.72, 158.1),
                vector4(375.85, 274.34, 102.66, 160.18),
                vector4(388.21, 269.6, 102.59, 69.4),
                vector4(389.76, 273.15, 102.59, 68.56),
                vector4(390.76, 276.88, 102.58, 69.57),
                vector4(392.14, 280.67, 102.57, 68.74),
                vector4(374.89, 283.68, 102.77, 338.74),
                vector4(371.21, 285.01, 102.84, 339.78),
                vector4(386.82, 291.35, 102.64, 163.98),
                vector4(382.73, 292.35, 102.7, 163.98),
                vector4(378.91, 293.4, 102.78, 162.06),
                vector4(374.94, 294.68, 102.86, 163.23),
                vector4(361.2, 293.52, 103.09, 249.27),
                vector4(359.66, 289.96, 103.09, 247.6),
                vector4(358.06, 286.35, 103.08, 248.66),
                vector4(356.99, 282.5, 102.99, 248.11),
            },
            blippoint = vector3(374.71, 279.28, 103.32),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(388.57, 257.13),
                vector2(349.74, 271.67),
                vector2(352.75, 281.97),
                vector2(358.69, 302.3),
                vector2(390.11, 295.08),
                vector2(400.61, 291.21),
            },
            minz = 101.67,
            maxz = 106.92,
        },
        ['garage6'] = {
            label = '6號車庫',
            spawnPoint = {
                vector4(1098.3, 2662.84, 37.55, 359.33),
                vector4(1101.79, 2663.13, 37.55, 1.09),
                vector4(1105.48, 2663.18, 37.55, 359.96),
                vector4(1111.74, 2657.78, 37.57, 268.43),
                vector4(1111.39, 2654.39, 37.57, 271.09),
                vector4(1116.72, 2647.13, 37.57, 2.3),
                vector4(1120.57, 2647.21, 37.57, 359.62),
                vector4(1124.08, 2647.93, 37.57, 2.78),
                vector4(1127.44, 2647.92, 37.57, 359.19),
                vector4(1131.48, 2647.34, 37.57, 358.56),
            },
            blippoint = vector3(1123.56, 2656.63, 38.0),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(1091.8948974609, 2676.7536621094),
                vector2(1139.7840576172, 2675.5483398438),
                vector2(1140.6735839844, 2643.6525878906),
                vector2(1108.7120361328, 2644.1350097656),
                vector2(1108.6146240234, 2659.7451171875),
                vector2(1091.6341552734, 2659.46484375),
            },
            minZ = 37.788307189941 - 1,
            maxZ = 38.694061279297 + 1
        },
        ['garage7'] = {
            label = '7號車庫',
            spawnPoint = {
                vector4(1854.95, 2541.94, 45.25, 270.2),
                vector4(1854.51, 2545.66, 45.25, 270.9),
                vector4(1854.8, 2549.21, 45.25, 271.28),
                vector4(1855.22, 2553.11, 45.25, 272.68),
                vector4(1854.51, 2556.73, 45.25, 271.15),
                vector4(1854.83, 2560.3, 45.25, 267.25),
                vector4(1854.97, 2564.11, 45.25, 270.15),
                vector4(1854.78, 2567.48, 45.25, 271.98),
                vector4(1855.19, 2571.62, 45.25, 270.27),
                vector4(1854.84, 2575.07, 45.25, 268.1),
                vector4(1855.43, 2578.81, 45.25, 272.74),
            },
            blippoint = vector3(1862.46, 2565.43, 45.67),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(1852.3106689453, 2582.8100585938),
                vector2(1887.5792236328, 2582.9799804688),
                vector2(1887.5270996094, 2524.509765625),
                vector2(1852.1411132812, 2525.1655273438),
            },
            minZ = 45.671352386475 - 1,
            maxZ = 45.789905548096 + 1
        },
        ['depot'] = {
            label = '拖吊場',
            spawnPoint = {
                vector4(396.3, -1644.46, 28.79, 318.91),
                vector4(398.43, -1646.58, 28.79, 319.31),
                vector4(400.71, -1648.67, 28.79, 319.33),
                vector4(403.25, -1650.56, 28.79, 320.16),
                vector4(405.54, -1652.74, 28.79, 319.84),
                vector4(407.9, -1654.8, 28.79, 319.92),
                vector4(410.58, -1656.9, 28.79, 320.2),
                vector4(418.39, -1646.38, 28.79, 49.59),
                vector4(420.99, -1641.97, 28.79, 88.61),
                vector4(421.03, -1638.86, 28.79, 89.3),
                vector4(420.88, -1635.8, 28.79, 89.22),
                vector4(419.92, -1629.3, 28.79, 140.08),
                vector4(417.3, -1627.48, 28.79, 141.37),
            },
            blippoint = vector3(410.02, -1638.0, 29.29),
            showBlip = true,
            blipsprite = 68,
            blipscale = 0.7,
            blipcolour = 5,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 0, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = false,
            zones = {
                vector2(410.33, -1660.35),
                vector2(423.39, -1645.19),
                vector2(424.0, -1640.5),
                vector2(423.87, -1632.95),
                vector2(423.17, -1628.41),
                vector2(411.61, -1619.73),
                vector2(406.27, -1626.09),
                vector2(403.39, -1623.67),
                vector2(388.1, -1641.98),
            },
            minz = 28.02,
            maxz = 39.92,
        },
        ['impound'] = {
            label = '扣押場',
            spawnPoint = {
                vector4(-197.76, -1175.06, 23.04, 197.18),
                vector4(-194.2, -1175.13, 23.04, 194.74),
                vector4(-190.75, -1175.22, 23.04, 197.14),
                vector4(-187.24, -1175.29, 23.04, 193.32),
                vector4(-183.61, -1175.24, 23.04, 191.49),
            },
            blippoint = vector3(-191.85, -1162.85, 23.67),
            showBlip = true,
            blipsprite = 68,
            blipscale = 0.7,
            blipcolour = 5,
            job = nil, -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 2, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = false,
            zones = {
                vector2(-170.64323425293, -1171.4061279297),
                vector2(-170.84928894043, -1186.3150634766),
                vector2(-202.32730102539, -1185.7760009766),
                vector2(-202.75402832031, -1171.2152099609)
            },
            minz = 22.06,
            maxz = 31.06,
        },
        --Job Garage:
        ['mspdgarage'] = {
            label = 'MRPD 車庫',
            spawnPoint = {
                vector4(445.92, -996.92, 24.96, 270.5),
                vector4(445.92, -994.25, 24.96, 270.33),
                vector4(446.08, -991.53, 24.96, 269.54),
                vector4(446.1, -988.8, 24.96, 271.8),
                vector4(445.96, -986.21, 24.96, 270.85),
                vector4(436.71, -986.18, 24.96, 90.59),
                vector4(437.24, -988.88, 24.96, 90.1),
                vector4(437.01, -991.53, 24.96, 90.52),
                vector4(436.69, -994.28, 24.96, 90.93),
                vector4(437.26, -996.98, 24.96, 89.1),
                vector4(425.79, -997.06, 24.96, 270.41),
                vector4(425.88, -994.43, 24.96, 270.01),
                vector4(426.06, -991.73, 24.96, 269.92),
                vector4(426.17, -989.05, 24.96, 269.0),
                vector4(425.91, -984.28, 24.96, 269.34),
                vector4(425.86, -981.6, 24.96, 269.16),
                vector4(425.93, -978.74, 24.96, 271.11),
                vector4(426.03, -976.17, 24.96, 270.27),
            },
            blippoint = vector3(441.64, -984.96, 25.7),
            showBlip = false,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'police', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(423.16, -1000.29),
                vector2(463.7, -1000.29),
                vector2(463.7, -973.04),
                vector2(423.16, -973.04),
            },
            minz = 24.66,
            maxz = 28.66,
        },
        ['mspdheligarage'] = {
            label = 'MRPD 直升機機庫',
            spawnPoint = {
                vector4(449.19, -981.28, 44.08, 91.06),
            },
            blippoint = vector3(441.64, -984.96, 25.7),
            showBlip = false,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'police', -- [nil: public garage] ['police: police garage'] ...
            fullfix = true, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = false,
            zones = {
                vector2(439.34, -971.23),
                vector2(439.34, -1001.21),
                vector2(463.93, -1001.21),
                vector2(463.93, -971.23),
            },
            minz = 42.68,
            maxz = 47.08,
        },
        ['hospital'] = {
            label = '圓帽山醫院車庫',
            spawnPoint = {
                vector4(332.95, -590.25, 28.8, 340),
                vector4(329.48, -589.58, 28.19, 340),
                vector4(326.22, -588.42, 28.19, 340),
                vector4(323.07, -586.75, 28.58, 340),
                vector4(319.83, -585.63, 28.59, 340),
                vector4(316.34, -578.2, 28.58, 249.99),
                vector4(317.78, -573.72, 28.58, 250.86),
                vector4(318.81, -569.41, 28.58, 248.53),
                vector4(321.41, -565.67, 28.58, 251.01),
            },
            blippoint = vector3(396.51, -1436.13, 29.45),
            showBlip = false,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'ambulance', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(333.99655151367, -593.92980957031),
                vector2(316.68753051758, -587.97521972656),
                vector2(318.60061645508, -582.59716796875),
                vector2(311.62026977539, -579.94244384766),
                vector2(317.55126953125, -561.98175048828),
                vector2(321.65222167969, -560.07446289062),
                vector2(326.50802612305, -560.98181152344),
                vector2(343.95721435547, -567.33087158203)
            },
            minz = 28.36,
            maxz = 33.66,
        },
        ['hospitalheligarage'] = {
            label = '圓帽山直升機機庫',
            spawnPoint = {
                vector4(351.47, -588.0, 74.16, 154.46)
            },
            blippoint = vector3(441.64, -984.96, 25.7),
            showBlip = false,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'ambulance', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = false,
            zones = {
                vector2(344.38986206055, -585.47570800781),
                vector2(347.65856933594, -581.08776855469),
                vector2(354.76422119141, -580.41839599609),
                vector2(358.88519287109, -584.02130126953),
                vector2(360.14794921875, -589.63269042969),
                vector2(356.07763671875, -595.14770507812),
                vector2(351.36141967773, -596.02252197266),
                vector2(348.26983642578, -595.13073730469),
                vector2(344.96963500977, -592.13720703125),
                vector2(343.71258544922, -589.16827392578)
            },
            minz = 74,
            maxz = 77,
        },
        ['mechanic'] = {
            label = 'Mechanic Garage',
            spawnPoint = {
                vector4(-379.21, -143.75, 38.27, 299.61),
                vector4(-377.58, -146.86, 38.27, 297.24),
                vector4(-380.96, -140.66, 38.27, 300.34),
                vector4(-382.47, -137.46, 38.27, 298.3),
                vector4(-384.41, -134.34, 38.27, 299.15),
                vector4(-386.23, -131.56, 38.27, 299.57),
                vector4(-387.9, -128.23, 38.27, 297.8),
                vector4(-389.36, -125.03, 38.27, 298.85),
                vector4(-390.91, -122.09, 38.26, 299.1),
                vector4(-392.75, -119.05, 38.18, 298.25),
                vector4(-357.66, -120.68, 38.28, 70.53),
                vector4(-358.84, -123.97, 38.28, 71.17),
                vector4(-360.09, -127.23, 38.28, 70.25),
            },
            blippoint = vector3(-371.28, -133.6, 38.69),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'mechanic', -- [nil: public garage] ['police: police garage'] ...
            fullfix = true, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(-402.01, -108.09),
                vector2(-384.19, -98.44),
                vector2(-348.34, -111.58),
                vector2(-358.37, -138.34),
                vector2(-352.37, -148.8),
                vector2(-372.34, -160.89),
            },
            minz = 37.27,
            maxz = 43.27,
        },
        --Gang Garage:
        ['ballas'] = {
            label = 'Ballas Garage',
            spawnPoint = {
                vector4(101.17, -1947.86, 20.35, 52.47),
                vector4(104.58, -1939.74, 20.39, 51.97),
                vector4(109.98, -1932.75, 20.32, 73.93),
            },
            blippoint = vector3(102.69, -1938.39, 20.8),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'ballas', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(84.18, -1938.56),
                vector2(88.06, -1947.25),
                vector2(93.13, -1953.85),
                vector2(100.28, -1957.92),
                vector2(108.25, -1956.84),
                vector2(118.79, -1950.97),
                vector2(122.93, -1941.33),
                vector2(120.3, -1930.46),
                vector2(112.13, -1923.64),
                vector2(103.24, -1921.11),
                vector2(93.37, -1916.24),
            },
            minz = 19.36,
            maxz = 26.66,
        },
        ['families'] = {
            label = 'La Familia Garage',
            spawnPoint = {
                vector4(-811.55, 187.23, 72.06, 111.12),
            },
            blippoint = vector3(-811.55, 187.23, 72.06),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'families', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(-808.43, 192.3),
                vector2(-806.38, 186.41),
                vector2(-814.77, 183.17),
                vector2(-816.75, 189.34),
            },
            minz = 71.36,
            maxz = 75.66,
        },
        ['lostmc'] = {
            label = 'Lost MC Garage',
            spawnPoint = {
                vector4(965.33, -118.87, 73.94, 129.19),
                vector4(970.25, -113.7, 73.94, 131.01),
                vector4(968.77, -142.73, 73.98, 56.76),
                vector4(953.66, -133.4, 74.04, 239.18),
            },
            blippoint = vector3(965.33, -118.87, 73.94),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'lostmc', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(970.94, -146.83),
                vector2(979.22, -138.93),
                vector2(982.2, -119.46),
                vector2(972.01, -108.46),
                vector2(945.86, -130.17),
                vector2(948.61, -132.95),
            },
            minz = 72.36,
            maxz = 77.66,
        },
        ['cartel'] = {
            label = 'Cartel Garage',
            spawnPoint = {
                vector4(1412.47, 1120.6, 114.42, 270.38),
                vector4(1412.65, 1116.0, 114.42, 269.08),
                vector4(1402.42, 1116.16, 114.42, 269.08),
                vector4(1402.39, 1120.55, 114.42, 269.8),
            },
            blippoint = vector3(1412.47, 1120.6, 114.42),
            showBlip = true,
            blipsprite = 357,
            blipscale = 0.65,
            blipcolour = 3,
            job = 'cartel', -- [nil: public garage] ['police: police garage'] ...
            fullfix = false, -- [true: full fix when take out vehicle]
            garastate = 1, -- [0: Depot] [1: Garage] [2: Impound]
            isHouseGarage = false,
            canStoreVehicle = true,
            zones = {
                vector2(1417.07, 1123.27),
                vector2(1398.0, 1123.4),
                vector2(1398.15, 1114.47),
                vector2(1417.02, 1114.44),
            },
            minz = 113.36,
            maxz = 119.66,
        },
}

--Job Vehicle:
JobVeh = {
    ['mechanic'] = {
        ['mechanic'] = {--make sure the name is the same as the job garage name configured above(see line 646)
            vehicle = {
                [0] = {--recruit
                    ['lgc19flatbed'] = {
                        name = 'Peterbilt 337',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                    ['isgtow'] = {
                        name = 'Towtruck T440',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                },
                [1] = {--novice
                    ['lgc19flatbed'] = {
                        name = 'Peterbilt 337',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                    ['isgtow'] = {
                        name = 'Towtruck T440',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                },
                [2] = {--experienced
                    ['lgc19flatbed'] = {
                        name = 'Peterbilt 337',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                    ['isgtow'] = {
                        name = 'Towtruck T440',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                },
                [3] = {--advanced
                    ['lgc19flatbed'] = {
                        name = 'Peterbilt 337',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                    ['isgtow'] = {
                        name = 'Towtruck T440',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                },
                [4] = {--manager
                    ['lgc19flatbed'] = {
                        name = 'Peterbilt 337',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                    ['isgtow'] = {
                        name = 'Towtruck T440',
                        livery = nil,
                        modType = nil,
                        modIndex = nil,
                    },
                },
            },
            useJobspawnPoint = true, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
                vector4(-375.65, -145.82, 38.73, 119.01),
                vector4(-377.4, -142.75, 38.73, 118.49),
                vector4(-378.82, -139.47, 38.73, 118.36),
                vector4(-380.89, -136.58, 38.73, 119.45),
                vector4(-382.68, -133.6, 38.73, 119.12),
                vector4(-384.38, -130.43, 38.73, 119.69),
                vector4(-385.92, -127.34, 38.73, 119.33),
                vector4(-387.55, -124.21, 38.73, 118.94),
                vector4(-389.5, -121.26, 38.73, 118.83),
                vector4(-391.21, -118.24, 38.71, 118.74),
                vector4(-361.64, -126.62, 38.74, 250.92),
                vector4(-360.4, -123.28, 38.74, 249.82),
                vector4(-359.33, -119.99, 38.74, 249.89),
            },
            plate = 'CHGT' -- the first four letters of the license plate
        },
    },
    ['police'] = {
        ['mspdgarage'] = {--make sure the name is the same as the job garage name configured above(see line 516)
            vehicle = {
                ['npolvic'] = {
                    name = 'LSPD CVPI',
                    props = {
                        color1 = 111, --主色調
                        color2 = 0, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 0, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolexp'] = {
                    name = 'LSPD 福特 探險家',
                    props = {
                        color1 = 111, --主色調
                        color2 = 0, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 0, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolvette'] = {
                    name = 'LSPD 科爾維特 C7',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchal'] = {
                    name = 'LSPD 道奇 挑戰者',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchar'] = {
                    name = 'LSPD 道奇 地獄貓',
                    props = {
                        color1 = 111, --主色調
                        color2 = 0, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 0, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolstang'] = {
                    name = 'LSPD 福特 野馬',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 4, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP' -- the first four letters of the license plate
        },
        ['mspdheligarage'] = {
            vehicle = {
                ['POLMAV'] = {
                    name = 'LSPD 直升機',
                    props = {
                        modLivery = 0, --塗裝
                    }
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP'
        },
    },
    ['bcso'] = {
        ['mspdgarage'] = {--make sure the name is the same as the job garage name configured above(see line 516)
            vehicle = {
                ['npolvic'] = {
                    name = 'BCSO CVPI',
                    props = {
                        color1 = 0, --主色調
                        color2 = 0, --副色調
                        interiorColor = 89, --內裝顏色
                        dashboardColor = 89, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolexp'] = {
                    name = 'BCSO 福特 探險家',
                    props = {
                        color1 = 0, --主色調
                        color2 = 0, --副色調
                        interiorColor = 89, --內裝顏色
                        dashboardColor = 89, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolvette'] = {
                    name = 'BCSO 科爾維特 C7',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 1, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchal'] = {
                    name = 'BCSO 道奇 挑戰者',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 1, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchar'] = {
                    name = 'BCSO 道奇 地獄貓',
                    props = {
                        color1 = 111, --主色調
                        color2 = 0, --副色調
                        interiorColor = 0, --內裝顏色
                        dashboardColor = 0, --儀表板顏色
                        modLivery = 1, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolstang'] = {
                    name = 'BCSO 福特 野馬',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 1, --塗裝
                        modArchCover = 3, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP' -- the first four letters of the license plate
        },
        ['mspdheligarage'] = {
            vehicle = {
                ['POLMAV'] = {
                    name = 'BCSO 直升機',
                    props = {
                        modLivery = 0, --塗裝
                    }
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP'
        },
    },
    ['sasp'] = {
        ['mspdgarage'] = {--make sure the name is the same as the job garage name configured above(see line 516)
            vehicle = {
                ['npolvic'] = {
                    name = 'SASP CVPI',
                    props = {
                        color1 = 62, --主色調
                        color2 = 62, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolexp'] = {
                    name = 'SASP 福特 探險家',
                    props = {
                        color1 = 62, --主色調
                        color2 = 62, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolvette'] = {
                    name = 'SASP 科爾維特 C7',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchal'] = {
                    name = 'SASP 道奇 挑戰者',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchar'] = {
                    name = 'SASP 道奇 地獄貓',
                    props = {
                        color1 = 62, --主色調
                        color2 = 62, --副色調
                        interiorColor = 0, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 2, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolstang'] = {
                    name = 'SASP 福特 野馬',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 0, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 0, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP' -- the first four letters of the license plate
        },
        ['mspdheligarage'] = {
            vehicle = {
                ['POLMAV'] = {
                    name = 'SASP 直升機',
                    props = {
                        modLivery = 0, --塗裝
                    }
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP'
        },
    },
    ['saspr'] = {
        ['mspdgarage'] = {--make sure the name is the same as the job garage name configured above(see line 516)
            vehicle = {
                ['npolvic'] = {
                    name = 'SASPR CVPI',
                    props = {
                        color1 = 111, --主色調
                        color2 = 49, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 49, --儀表板顏色
                        modLivery = 7, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolexp'] = {
                    name = 'SASPR 福特 探險家',
                    props = {
                        color1 = 111, --主色調
                        color2 = 49, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 49, --儀表板顏色
                        modLivery = 7, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolvette'] = {
                    name = 'SASPR 科爾維特 C7',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchal'] = {
                    name = 'SASPR 道奇 挑戰者',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolchar'] = {
                    name = 'SASPR 道奇 地獄貓',
                    props = {
                        color1 = 111, --主色調
                        color2 = 49, --副色調
                        interiorColor = 0, --內裝顏色
                        dashboardColor = 0, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolstang'] = {
                    name = 'SASPR 福特 野馬',
                    props = {
                        color1 = 141, --主色調
                        color2 = 141, --副色調
                        interiorColor = 111, --內裝顏色
                        dashboardColor = 111, --儀表板顏色
                        modLivery = 4, --塗裝
                        modArchCover = 2, --車頂數字第一位
                        modFrontBumper = -1, --前保險桿,
                        modFender = 3, --左後車廂數字
                        dirtLevel = 0,
                        modSpoilers = 0, --擾流板
                        modFrame = 1, --防滾架
                        modRightFender = 0, --右後車廂數字
                        modEngine = 4, --引擎
                        modBrakes = 2, --剎車
                        modTransmission = 3, --變速器
                        modHorns = 1, --喇叭
                        modSuspension = 3, --懸吊
                        modArmor = 4, --板金
                        modTurbo = 1, --Turbo
                        modVanityPlate = 0, --個性化標籤
                        modOrnaments = 0, --裝飾品
                        modDashboard = 0, --儀表板
                        modDial = 0, --時速表
                        modSeats = 0, --座位
                        modTrunk = 2, --後車箱
                        modAerials = 0, --天線
                        modTrimB = 0, --車頂數字第二位
                        modTank = 0, --車頂數字第三位
                    },
                },
                ['npolblazer'] = {
                    name = 'SASPR 長崎越野車',
                    props = {},
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP' -- the first four letters of the license plate
        },
        ['mspdheligarage'] = {
            vehicle = {
                ['POLMAV'] = {
                    name = 'SASPR 直升機',
                    props = {
                        modLivery = 0, --塗裝
                    }
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP'
        },
    },
    ['ambulance'] = {
        ['hospital'] = {--make sure the name is the same as the job garage name configured above(see line: 597)
            vehicle = {
                ['emsnspeedo'] = {
                    name = '救護車',
                    props = {}
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CCCD' -- the first four letters of the license plate
        },
        ['hospitalheligarage'] = {
            vehicle = {
                ['emsaw139'] = {
                    name = '救護直升機',
                    props = {}
                },
            },
            useJobspawnPoint = false, --[true: use the spawn point installed below] [false: use job garages spawn point]
            spawnPoint = {
            
            },
            plate = 'CSTP'
        },
    },
}

--Items are available in the trunk of the vehicle for industries in the vehicle system for work:
VehJobItems = {
    ['police'] = {
        [1] = {
            name = 'heavyarmor',
            amount = 2,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'empty_evidence_bag',
            amount = 10,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'police_stormram',
            amount = 1,
            info = {},
            type = 'item',
            slot = 3,
        },
    },
    ['mechanic'] = {
        [1] = {
            name = 'repairkit',
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'advancedrepairkit',
            amount = 2,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'cleaningkit',
            amount = 10,
            info = {},
            type = 'item',
            slot = 3,
        },
    },
    ['ambulance'] = {
        [1] = {
            name = 'bandage',
            amount = 10,
            info = {},
            type = 'item',
            slot = 1,
        },
        [2] = {
            name = 'firstaid',
            amount = 2,
            info = {},
            type = 'item',
            slot = 2,
        },
        [3] = {
            name = 'painkillers',
            amount = 10,
            info = {},
            type = 'item',
            slot = 3,
        },
    },
}
