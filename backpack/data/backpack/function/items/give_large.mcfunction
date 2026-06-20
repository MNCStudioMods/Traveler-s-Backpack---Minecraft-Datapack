# Create large backpack item
function backpack:system/register_player

loot give @s loot backpack:items/large
function backpack:items/stamp_inventory

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid).tier set value "large"
function backpack:open/ensure_capacity with storage backpack:temp

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"You received a Traveler's Backpack+ (54 slots).","color":"green"}]
