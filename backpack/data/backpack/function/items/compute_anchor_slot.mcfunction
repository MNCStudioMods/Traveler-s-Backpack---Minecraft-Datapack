# Compute anchor slot from large backpack slot in @s backpack.temp -> #anchor backpack.temp
# Uses slot to the right, or left if on right edge of a row
scoreboard players operation #anchor backpack.temp = @s backpack.temp
execute unless score @s backpack.temp matches 8,17,26,35 run scoreboard players add #anchor backpack.temp 1
execute if score @s backpack.temp matches 8 run scoreboard players set #anchor backpack.temp 7
execute if score @s backpack.temp matches 17 run scoreboard players set #anchor backpack.temp 16
execute if score @s backpack.temp matches 26 run scoreboard players set #anchor backpack.temp 25
execute if score @s backpack.temp matches 35 run scoreboard players set #anchor backpack.temp 34
