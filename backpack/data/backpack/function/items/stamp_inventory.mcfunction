# Stamp owner on all unassigned backpacks in inventory
execute store result storage backpack:temp owner_pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp owner_pid
$item modify entity @s inventory.*[custom_data~{backpack:{tier:1,owner_pid:0}}] set_custom_data {backpack:{tier:1,owner_pid:$(owner_pid),version:1}}
$item modify entity @s inventory.*[custom_data~{backpack:{tier:2,owner_pid:0}}] set_custom_data {backpack:{tier:2,owner_pid:$(owner_pid),version:1}}
$item modify entity @s weapon.*[custom_data~{backpack:{tier:1,owner_pid:0}}] set_custom_data {backpack:{tier:1,owner_pid:$(owner_pid),version:1}}
$item modify entity @s weapon.*[custom_data~{backpack:{tier:2,owner_pid:0}}] set_custom_data {backpack:{tier:2,owner_pid:$(owner_pid),version:1}}
