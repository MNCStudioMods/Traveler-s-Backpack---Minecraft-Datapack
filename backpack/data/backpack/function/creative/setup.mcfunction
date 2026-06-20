# One-time creative mode setup: grant items + recipes
execute if entity @s[tag=backpack.creative_ready] run return 0
tag @s add backpack.creative_ready

recipe give @s backpack:small_backpack
recipe give @s backpack:large_backpack

loot give @s loot backpack:items/small
loot give @s loot backpack:items/large
function backpack:items/stamp_inventory

tellraw @s [{"text":"[Traveler's Backpack] ","color":"gold","bold":true},{"text":"Creative items added to your inventory.","color":"green"}]
tellraw @s [{"text":"  You can also find recipes in the ","color":"gray"},{"text":"Recipe Book","color":"yellow"},{"text":" (click result to get more).","color":"gray"}]
