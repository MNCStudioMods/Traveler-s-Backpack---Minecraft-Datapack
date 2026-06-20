# Assign persistent player ID for storage keying
execute unless score @s backpack.pid matches 1.. run function backpack:system/register_player_new
