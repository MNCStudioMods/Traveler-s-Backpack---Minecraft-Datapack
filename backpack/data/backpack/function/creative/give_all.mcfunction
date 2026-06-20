execute unless entity @s[gamemode=creative] run tellraw @s [{"text":"[Backpack] ","color":"red"},{"text":"Creative-only command. Switch to Creative mode first.","color":"gray"}]
execute unless entity @s[gamemode=creative] run return fail
function backpack:items/give_small
function backpack:items/give_large
