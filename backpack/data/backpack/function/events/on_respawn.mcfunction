# Restore backpack after respawn
tag @s remove backpack.died

execute unless data storage backpack:config {keep_on_death:1} run return 0

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid

execute unless data storage backpack:data death.Slot$(pid) run return 0

$item replace entity @s container.0 with storage backpack:data death.Slot$(pid)
data remove storage backpack:data death.Slot$(pid)

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Your backpack was restored.","color":"green"}]
