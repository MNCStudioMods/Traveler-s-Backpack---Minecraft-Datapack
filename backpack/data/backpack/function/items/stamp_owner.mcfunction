# Stamp owner PID onto held backpack item (preserves tier)
execute store result storage backpack:temp owner_pid int 1 run scoreboard players get @s backpack.pid
data modify storage backpack:temp item set from entity @s SelectedItem
execute store result storage backpack:temp item.components."minecraft:custom_data".backpack.owner_pid int 1 run scoreboard players get @s backpack.pid
$item replace entity @s weapon.mainhand with storage backpack:temp item
