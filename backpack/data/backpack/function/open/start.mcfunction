# Open backpack storage UI
playsound minecraft:block.chest.open master @s ~ ~ ~ 0.8 1.0
title @s actionbar [{"text":"Traveler's Backpack ","color":"gold"},{"text":"- Storage Open","color":"yellow"}]

# Store player pid on temp for macros
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
execute store result score @s backpack.temp run data get entity @s SelectedItem.components."minecraft:custom_data".backpack.tier
scoreboard players set @s backpack.page 0

# Tag player as viewing
tag @s add backpack.viewing

# Summon chest minecart UI entity
execute at @s run summon chest_minecart ~ ~ ~ {CustomName:'{"text":"Traveler\'s Backpack","color":"gold","italic":false}',Invulnerable:1b,Silent:1b,NoGravity:1b,Tags:["backpack.ui","backpack.ui.new"]}

# Link minecart to owner
scoreboard players operation @e[type=chest_minecart,tag=backpack.ui.new,limit=1,sort=nearest] backpack.pid = @s backpack.pid
tag @e[type=chest_minecart,tag=backpack.ui.new,limit=1,sort=nearest] add backpack.ui.active
tag @e[type=chest_minecart,tag=backpack.ui.new,limit=1,sort=nearest] remove backpack.ui.new

# Load items from storage into minecart
function backpack:open/load_items with storage backpack:temp

# Mount player to enable inventory access (press E to view storage)
ride @s mount @e[type=chest_minecart,tag=backpack.ui.active,limit=1,sort=nearest]

# Apply cooldown from config
execute store result score @s backpack.cooldown run data get storage backpack:config cooldown
