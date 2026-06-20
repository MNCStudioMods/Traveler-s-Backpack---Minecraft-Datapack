function backpack:security/check_op

function backpack:system/register_player

# Upgrade storage tier and give large backpack item
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid).tier set value "large"
function backpack:open/ensure_capacity with storage backpack:temp

loot replace entity @s weapon.mainhand loot backpack:items/large
execute store result storage backpack:temp owner_pid int 1 run scoreboard players get @s backpack.pid
function backpack:items/stamp_owner with storage backpack:temp

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Backpack upgraded to Large (54 slots). All stored items preserved.","color":"light_purple"}]
