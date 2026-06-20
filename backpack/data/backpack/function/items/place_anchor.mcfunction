# Place second-slot anchor for large backpack
function backpack:items/find_large_slot
execute if score @s backpack.temp matches -1 run return fail

function backpack:items/compute_anchor_slot
function backpack:items/check_anchor_slot
execute if score #slot_ok backpack.temp matches 0 run tellraw @s [{"text":"[Backpack] ","color":"red"},{"text":"Large Backpack needs 2 free adjacent slots!","color":"gray"}]
execute if score #slot_ok backpack.temp matches 0 run return fail

function backpack:items/build_anchor
function backpack:items/place_at_slot
