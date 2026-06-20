# Detect players who switch to Creative mode and grant backpacks once
execute as @a[gamemode=creative,tag=!backpack.creative_ready] run function backpack:creative/setup
