# Flip page while viewing large backpack
advancement revoke @s only backpack:flip_page

execute unless entity @s[tag=backpack.viewing] run return fail
execute unless score @s backpack.temp matches 2.. run return fail

# Save current page
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
function backpack:open/save_page with storage backpack:temp

# Toggle page 0 <-> 1
scoreboard players add @s backpack.page 1
execute if score @s backpack.page matches 2.. run scoreboard players set @s backpack.page 0

# Reload minecart contents
execute store result storage backpack:temp tier int 1 run scoreboard players get @s backpack.temp
function backpack:open/load_items with storage backpack:temp

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.5 1.2
title @s actionbar [{"text":"[Backpack] ","color":"gold"},{"text":"Page flipped.","color":"yellow"}]
