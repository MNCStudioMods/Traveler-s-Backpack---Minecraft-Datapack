function backpack:security/check_op

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid

tellraw @s [{"text":"[Backpack Inspect] ","color":"gold","bold":true},{"text":"Inspecting ","color":"gray"},{"selector":"@s","color":"white"}]

execute if data storage backpack:data players.Slot$(pid) {tier:"none"} run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"None","color":"dark_gray"}]
execute if data storage backpack:data players.Slot$(pid) {tier:"small"} run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Small (27 slots)","color":"yellow"}]
execute if data storage backpack:data players.Slot$(pid) {tier:"large"} run tellraw @s [{"text":"  Tier: ","color":"gray"},{"text":"Large (54 slots)","color":"light_purple"}]

execute store result score #items backpack.temp run data get storage backpack:data players.Slot$(pid).items
tellraw @s [{"text":"  Stored item entries: ","color":"gray"},{"score":{"name":"#items","objective":"backpack.temp"},"color":"white"}]
