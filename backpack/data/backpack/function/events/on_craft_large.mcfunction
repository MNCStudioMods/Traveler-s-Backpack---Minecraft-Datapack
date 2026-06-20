# Large backpack crafted - upgrade preserves all stored items
advancement revoke @s only backpack:craft_large

function backpack:system/register_player
function backpack:items/stamp_inventory

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid).tier set value "large"
function backpack:open/ensure_capacity with storage backpack:temp

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Upgraded to Traveler's Backpack+! All items preserved.","color":"light_purple"}]
