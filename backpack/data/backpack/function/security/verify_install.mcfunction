# Verify datapack integrity on load
scoreboard players set #integrity_ok backpack.const 1

execute store success score #meta_ok backpack.temp run data get storage backpack:meta version
execute if score #meta_ok backpack.temp matches 0 run scoreboard players set #integrity_ok backpack.const 0

execute store success score #data_ok backpack.temp run data get storage backpack:data version
execute if score #data_ok backpack.temp matches 0 run scoreboard players set #integrity_ok backpack.const 0

execute if score #integrity_ok backpack.const matches 0 run tellraw @a [{"text":"[Traveler's Backpack] ","color":"red","bold":true},{"text":"WARNING: Integrity check failed! Reinstall the datapack or run /function backpack:admin/reload.","color":"yellow"}]
execute if score #integrity_ok backpack.const matches 1 run tellraw @a [{"text":"[Traveler's Backpack] ","color":"gold"},{"text":"Integrity check passed.","color":"gray"}]
