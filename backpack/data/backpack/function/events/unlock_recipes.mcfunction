# Unlock backpack recipes for recipe book (survival + creative)
recipe give @s backpack:small_backpack
recipe give @s backpack:large_backpack

# Creative players receive backpacks automatically (no crafting required)
execute if entity @s[gamemode=creative] run function backpack:creative/setup
