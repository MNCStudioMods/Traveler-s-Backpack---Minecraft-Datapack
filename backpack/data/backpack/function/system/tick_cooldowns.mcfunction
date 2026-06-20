# Decrement cooldowns for players with active cooldown
execute as @a[scores={backpack.cooldown=1..}] run scoreboard players remove @s backpack.cooldown 1
