function backpack:security/check_op

function backpack:system/register_player

# Upgrade storage tier and give large backpack item
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid).tier set value "large"
function backpack:open/ensure_capacity with storage backpack:temp

loot replace entity @s weapon.mainhand loot backpack:items/large
function backpack:items/stamp_inventory
function backpack:items/place_anchor

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Backpack upgraded to Large (54 slots, 2 inventory slots). All stored items preserved.","color":"light_purple"}]
