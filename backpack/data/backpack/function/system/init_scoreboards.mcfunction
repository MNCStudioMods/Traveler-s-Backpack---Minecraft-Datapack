# Initialize scoreboards
scoreboard objectives add backpack.const dummy
scoreboard objectives add backpack.pid dummy
scoreboard objectives add backpack.cooldown dummy
scoreboard objectives add backpack.temp dummy
scoreboard objectives add backpack.death dummy
scoreboard objectives add backpack.used minecraft.used:carrot_on_a_stick

# Constants
scoreboard players set #0 backpack.const 0
scoreboard players set #1 backpack.const 1
scoreboard players set #20 backpack.const 20
scoreboard players set #27 backpack.const 27
scoreboard players set #40 backpack.const 40
scoreboard players set #54 backpack.const 54
scoreboard players set #100 backpack.const 100
scoreboard players set #next backpack.pid 0
