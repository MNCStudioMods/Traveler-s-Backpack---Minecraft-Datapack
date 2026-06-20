# Save backpack item on death when keep_on_death is enabled
execute unless data storage backpack:config {keep_on_death:1} run return 0
tag @s add backpack.died

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid

execute if items entity @s weapon.mainhand[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s SelectedItem
execute if items entity @s weapon.mainhand[custom_data~{backpack:{}}] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s equipment.offhand
execute if items entity @s weapon.offhand[custom_data~{backpack:{}}] run item replace entity @s weapon.offhand with air
execute if items entity @s hotbar.0[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:0b}]
execute if items entity @s hotbar.0[custom_data~{backpack:{}}] run item replace entity @s hotbar.0 with air
execute if items entity @s hotbar.1[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:1b}]
execute if items entity @s hotbar.1[custom_data~{backpack:{}}] run item replace entity @s hotbar.1 with air
execute if items entity @s hotbar.2[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:2b}]
execute if items entity @s hotbar.2[custom_data~{backpack:{}}] run item replace entity @s hotbar.2 with air
execute if items entity @s hotbar.3[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:3b}]
execute if items entity @s hotbar.3[custom_data~{backpack:{}}] run item replace entity @s hotbar.3 with air
execute if items entity @s hotbar.4[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:4b}]
execute if items entity @s hotbar.4[custom_data~{backpack:{}}] run item replace entity @s hotbar.4 with air
execute if items entity @s hotbar.5[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:5b}]
execute if items entity @s hotbar.5[custom_data~{backpack:{}}] run item replace entity @s hotbar.5 with air
execute if items entity @s hotbar.6[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:6b}]
execute if items entity @s hotbar.6[custom_data~{backpack:{}}] run item replace entity @s hotbar.6 with air
execute if items entity @s hotbar.7[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:7b}]
execute if items entity @s hotbar.7[custom_data~{backpack:{}}] run item replace entity @s hotbar.7 with air
execute if items entity @s hotbar.8[custom_data~{backpack:{}}] run data modify storage backpack:data death.Slot$(pid) set from entity @s Inventory[{Slot:8b}]
execute if items entity @s hotbar.8[custom_data~{backpack:{}}] run item replace entity @s hotbar.8 with air
