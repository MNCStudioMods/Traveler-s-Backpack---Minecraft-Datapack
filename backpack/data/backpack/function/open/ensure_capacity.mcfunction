$data storage backpack:temp pid
# Ensure storage has 54 slot capacity for large backpacks
execute unless data storage backpack:data players.Slot$(pid).items[53] run data modify storage backpack:data players.Slot$(pid).items append value {}
