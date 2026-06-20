# Detect player deaths via DeathTime NBT (efficient: only players with backpacks)
execute as @a if items entity @s inventory.*[custom_data~{backpack:{}}] store result score @s backpack.death run data get entity @s DeathTime
execute as @a[scores={backpack.death=1..}] unless entity @s[tag=backpack.died] run function backpack:events/on_death

# Detect respawn (DeathTime back to 0 with died tag)
execute as @a[tag=backpack.died] store result score @s backpack.temp run data get entity @s DeathTime
execute as @a[tag=backpack.died,scores={backpack.temp=0}] run function backpack:events/on_respawn
