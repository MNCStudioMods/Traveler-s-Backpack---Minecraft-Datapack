# Traveler's Backpack - Load
tellraw @a [{"text":"[Traveler's Backpack] ","color":"gold","bold":true},{"text":"Loading...","color":"yellow"}]

function backpack:system/init_scoreboards
function backpack:system/init_storage
function backpack:system/init_settings
function backpack:security/verify_install

# Register online players
execute as @a run function backpack:system/register_player

scoreboard players set #loaded backpack.const 1
tellraw @a [{"text":"[Traveler's Backpack] ","color":"gold","bold":true},{"text":"Loaded successfully! ","color":"green"},{"text":"v1.0.0","color":"gray"}]
