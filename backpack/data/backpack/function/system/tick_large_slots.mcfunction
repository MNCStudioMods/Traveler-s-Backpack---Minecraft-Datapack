# Large backpack 2-slot enforcement (only players with large backpack or orphan anchors)
execute as @a if items entity @s inventory.*[custom_data~{backpack:{tier:2}}] run function backpack:items/enforce_anchor
execute as @a if items entity @s inventory.*[custom_data~{backpack:{anchor:1}}] unless items entity @s inventory.*[custom_data~{backpack:{tier:2}}] run function backpack:items/remove_anchors
execute as @a if items entity @s player.cursor[custom_data~{backpack:{anchor:1}}] run function backpack:items/return_cursor_anchor
