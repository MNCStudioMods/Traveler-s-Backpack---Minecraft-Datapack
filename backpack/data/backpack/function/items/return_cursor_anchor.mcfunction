# Put cursor anchor back into reserved slot
function backpack:items/find_large_slot
execute if score @s backpack.temp matches -1 run function backpack:items/remove_anchors
execute if score @s backpack.temp matches -1 run return 0

function backpack:items/compute_anchor_slot
data modify storage backpack:temp anchor set from entity @s player.cursor
item replace entity @s player.cursor with air
function backpack:items/place_at_slot
