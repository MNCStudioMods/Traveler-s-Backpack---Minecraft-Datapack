# Remove all backpack anchor placeholder items from inventory
$item replace entity @s inventory.*[custom_data~{backpack:{anchor:1}}] with air
$item replace entity @s weapon.*[custom_data~{backpack:{anchor:1}}] with air
$item replace entity @s player.cursor[custom_data~{backpack:{anchor:1}}] with air
