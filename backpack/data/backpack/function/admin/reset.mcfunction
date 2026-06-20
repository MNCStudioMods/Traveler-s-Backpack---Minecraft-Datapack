function backpack:security/check_op

execute store result storage backpack:temp pid int 1 run scoreboard players get @s backpack.pid
$data storage backpack:temp pid
data modify storage backpack:data players.Slot$(pid) set value {tier:"none",items:[]}

tellraw @s [{"text":"[Backpack] ","color":"gold"},{"text":"Your backpack storage has been reset.","color":"yellow"}]
