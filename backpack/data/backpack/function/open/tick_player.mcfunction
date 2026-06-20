# Check if player still mounted on their backpack minecart
execute unless entity @s[type=player,nbt={RootVehicle:{Entity:{id:"minecraft:chest_minecart"}}}] run function backpack:open/save_close
execute unless entity @e[type=chest_minecart,tag=backpack.ui,distance=..32] run function backpack:open/save_close

# Page indicator for large backpacks
execute if score @s backpack.page matches 1 run title @s actionbar [{"text":"Traveler's Backpack+ ","color":"gold"},{"text":"Page 2/2","color":"yellow"}]
execute if score @s backpack.page matches 0 if score @s backpack.temp matches 2.. run title @s actionbar [{"text":"Traveler's Backpack+ ","color":"gold"},{"text":"Page 1/2 ","color":"yellow"},{"text("(Sneak+Use to flip)","color":"gray","italic":true}]
