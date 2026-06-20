# Save minecart contents and close backpack UI
tag @s remove backpack.viewing

# Get linked minecart
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid

# Save current page items before closing
function backpack:open/save_page with storage backpack:temp

ride @s dismount

# Kill UI minecart owned by this player
scoreboard players operation #owner backpack.temp = @s backpack.pid
execute as @e[type=chest_minecart,tag=backpack.ui,distance=..64] if score @s backpack.pid = #owner backpack.temp run kill @s

# Reset page
scoreboard players set @s backpack.page 0
scoreboard players set @s backpack.temp 0

playsound minecraft:block.chest.close master @s ~ ~ ~ 0.8 1.0
title @s actionbar [{"text":"Traveler's Backpack ","color":"gold"},{"text":"- Storage Saved","color":"green"}]
