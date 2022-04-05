local Translations = {
    error = {
        there_are_no_vehicles_in_the_garage = 'There are no vehicles in the garage?!',
        the_receiving_area_is_obstructed_by_something = 'The receiving area is obstructed by something!?',
        nobody_owns_this_vehicle = 'Nobody owns this vehicle',
        you_need_to_return_the_car_you_received_before_so_you_can_get_a_new_one = 'You need to return the car you received before so you can get a new one',
        you_dont_have_enough_money = 'You don\'t have enough money',
    },
    success = {
        take_out_x_out_of_x_garage = '已將 %{vehicle} 從 %{garage} 取出!',
        vehicle_parked_in_x = '車輛已停放在 %{garage}',
        your_vehicle_has_been_marked = '已為您標記車輛位置',
    },
    info = {
        garage_menu_header = '🚘| %{header}',
        job_vehicle_menu_header = '🚘 | %{grade}\'s Vehicle List',
        garage_personal_menu_header = '🚘| 個人車庫',
        garage_shared_menu_header = '🚘| 公用車庫',
        close_menu = '❌| 關閉',
        vehicle_info = '車牌: %{plate}<br>油量: %{fuel}%<br>引擎: %{engine}%<br>車體: %{body}%',
        vehicle_info_and_depot = '車牌: %{plate}<br>可領取日: %{takeoutdate}',
        vehicle_info_and_price = '領取金額: $%{price}<br>車牌: %{plate}<br>油量: %{fuel}%<br>引擎: %{engine}%<br>車體: %{body}%',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})