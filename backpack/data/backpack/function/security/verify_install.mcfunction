# Verify datapack integrity on load
scoreboard players set #integrity_ok backpack.const 1

execute unless data storage backpack:meta {version:"1.0.0"} run scoreboard players set #integrity_ok backpack.const 0
execute unless data storage backpack:data {version:1} run scoreboard players set #integrity_ok backpack.const 0

execute if score #integrity_ok backpack.const matches 0 run tellraw @a [{"text":"[Traveler's Backpack] ","color":"red","bold":true},{"text":"WARNING: Integrity check failed! Some core files may be missing or corrupted.","color":"yellow"}]
execute if score #integrity_ok backpack.const matches 1 run tellraw @a [{"text":"[Traveler's Backpack] ","color":"gold"},{"text":"Integrity check passed.","color":"gray"}]
