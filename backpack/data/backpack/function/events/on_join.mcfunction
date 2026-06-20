# Player join handler (runs once per player)
execute if entity @s[tag=backpack.initialized] run return 0
tag @s add backpack.initialized

function backpack:system/register_player

# Reset advancement triggers for this player
advancement revoke @s only backpack:craft_small
advancement revoke @s only backpack:craft_large
advancement revoke @s only backpack:use_backpack
advancement revoke @s only backpack:flip_page

# Restore backpack on respawn if configured
function backpack:events/on_respawn
