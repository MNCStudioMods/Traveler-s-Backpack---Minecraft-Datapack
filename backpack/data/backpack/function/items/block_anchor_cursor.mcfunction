# Return picked-up anchor placeholder to its reserved slot
execute if items entity @s player.cursor[custom_data~{backpack:{anchor:1}}] run function backpack:items/return_cursor_anchor
