# Small backpack crafted
advancement revoke @s only backpack:craft_small

function backpack:system/register_player
function backpack:items/stamp_inventory

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid).tier set value "small"

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Crafted Traveler's Backpack! Right-click to open.","color":"green"}]
