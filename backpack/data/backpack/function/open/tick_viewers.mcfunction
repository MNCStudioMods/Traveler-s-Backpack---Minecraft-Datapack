# Monitor players viewing backpack storage
execute as @a[tag=backpack.viewing] at @s run function backpack:open/tick_player
