# Build anchor item in storage and stamp owner
execute store result storage backpack:temp owner_pid int 1 run scoreboard players get @s backpack.pid
loot replace entity @s weapon.offhand loot backpack:items/anchor
$data storage backpack:temp owner_pid
$item modify entity @s weapon.offhand set_custom_data {backpack:{anchor:1,owner_pid:$(owner_pid),version:1}}
data modify storage backpack:temp anchor set from entity @s equipment.offhand
item replace entity @s weapon.offhand with air
