# Keep large backpack anchor synced to the correct second slot
function backpack:items/find_large_slot
execute if score @s backpack.temp matches -1 run return fail

function backpack:items/compute_anchor_slot
function backpack:items/has_anchor_at_slot
execute if score #has_anchor backpack.temp matches 1 run return 0

function backpack:items/check_anchor_slot
execute if score #slot_ok backpack.temp matches 0 run title @s actionbar [{"text":"Clear the slot beside your Large Backpack","color":"red"}]
execute if score #slot_ok backpack.temp matches 0 run return fail

function backpack:items/remove_anchors
function backpack:items/build_anchor
function backpack:items/place_at_slot
