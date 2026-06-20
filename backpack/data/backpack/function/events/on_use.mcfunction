# Entry point when player uses backpack item
advancement revoke @s only backpack:use_backpack

# Block opening while already viewing (use sneak+use to flip pages on large backpacks)
execute if entity @s[tag=backpack.viewing] run return 0

# Ensure player is registered
function backpack:system/register_player

# Verify holding a valid backpack
execute unless items entity @s weapon.*[custom_data~{backpack:{}}] run return fail

# Owner check - only owner can access
execute store result score #owner_pid backpack.temp run data get entity @s SelectedItem.components."minecraft:custom_data".backpack.owner_pid
execute unless score @s backpack.pid = #owner_pid backpack.temp run tellraw @s [{"text":"[Backpack] ","color":"red"},{"text":"This backpack belongs to another traveler.","color":"gray"}]
execute unless score @s backpack.pid = #owner_pid backpack.temp run return fail

# Cooldown check
execute if score @s backpack.cooldown matches 1.. run tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Please wait before opening again.","color":"gray"}]
execute if score @s backpack.cooldown matches 1.. run return fail

# Combat check
execute if data storage backpack:config {combat_block:1} if predicate backpack:in_combat run tellraw @s [{"text":"[Backpack] ","color":"red"},{"text":"Cannot open backpack during combat!","color":"gray"}]
execute if data storage backpack:config {combat_block:1} if predicate backpack:in_combat run return fail

# Already viewing check
tag @s add backpack.opening
execute if entity @s[tag=backpack.viewing] run tag @s remove backpack.opening
execute if entity @s[tag=backpack.viewing] run return fail

# Prevent duplicate minecarts for this player
scoreboard players operation #temp backpack.temp = @s backpack.pid
scoreboard players set #blocked backpack.temp 0
execute as @e[type=chest_minecart,tag=backpack.ui,distance=..64] if score @s backpack.pid = #temp backpack.temp run scoreboard players set #blocked backpack.temp 1
execute if score #blocked backpack.temp matches 1 run tellraw @s [{"text":"[Backpack] ","color":"red"},{"text":"Storage is already open.","color":"gray"}]
execute if score #blocked backpack.temp matches 1 run tag @s remove backpack.opening
execute if score #blocked backpack.temp matches 1 run return fail

function backpack:open/start
tag @s remove backpack.opening
