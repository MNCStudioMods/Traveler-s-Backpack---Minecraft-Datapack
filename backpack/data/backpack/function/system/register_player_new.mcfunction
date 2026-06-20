# Assign new player ID
scoreboard players add #next backpack.pid 1
scoreboard operation @s backpack.pid = #next backpack.pid

# Create empty storage slot for player
execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
function backpack:system/storage_init_slot with storage backpack:temp
