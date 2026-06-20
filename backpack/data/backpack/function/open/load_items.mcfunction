$data storage backpack:temp pid
# Build minecart Items from storage - page 0 uses slots 0-26, page 1 uses storage 27-53
data modify storage backpack:temp cart set value []

execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[0] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[0]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[0] run data modify storage backpack:temp cart[-1].Slot set value 0b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[1] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[1]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[1] run data modify storage backpack:temp cart[-1].Slot set value 1b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[2] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[2]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[2] run data modify storage backpack:temp cart[-1].Slot set value 2b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[3] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[3]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[3] run data modify storage backpack:temp cart[-1].Slot set value 3b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[4] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[4]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[4] run data modify storage backpack:temp cart[-1].Slot set value 4b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[5] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[5]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[5] run data modify storage backpack:temp cart[-1].Slot set value 5b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[6] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[6]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[6] run data modify storage backpack:temp cart[-1].Slot set value 6b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[7] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[7]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[7] run data modify storage backpack:temp cart[-1].Slot set value 7b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[8] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[8]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[8] run data modify storage backpack:temp cart[-1].Slot set value 8b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[9] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[9]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[9] run data modify storage backpack:temp cart[-1].Slot set value 9b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[10] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[10]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[10] run data modify storage backpack:temp cart[-1].Slot set value 10b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[11] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[11]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[11] run data modify storage backpack:temp cart[-1].Slot set value 11b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[12] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[12]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[12] run data modify storage backpack:temp cart[-1].Slot set value 12b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[13] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[13]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[13] run data modify storage backpack:temp cart[-1].Slot set value 13b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[14] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[14]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[14] run data modify storage backpack:temp cart[-1].Slot set value 14b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[15] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[15]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[15] run data modify storage backpack:temp cart[-1].Slot set value 15b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[16] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[16]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[16] run data modify storage backpack:temp cart[-1].Slot set value 16b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[17] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[17]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[17] run data modify storage backpack:temp cart[-1].Slot set value 17b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[18] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[18]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[18] run data modify storage backpack:temp cart[-1].Slot set value 18b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[19] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[19]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[19] run data modify storage backpack:temp cart[-1].Slot set value 19b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[20] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[20]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[20] run data modify storage backpack:temp cart[-1].Slot set value 20b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[21] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[21]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[21] run data modify storage backpack:temp cart[-1].Slot set value 21b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[22] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[22]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[22] run data modify storage backpack:temp cart[-1].Slot set value 22b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[23] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[23]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[23] run data modify storage backpack:temp cart[-1].Slot set value 23b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[24] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[24]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[24] run data modify storage backpack:temp cart[-1].Slot set value 24b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[25] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[25]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[25] run data modify storage backpack:temp cart[-1].Slot set value 25b
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[26] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[26]
execute if score @s backpack.page matches 0 if data storage backpack:data players.Slot$(pid).items[26] run data modify storage backpack:temp cart[-1].Slot set value 26b

# Page 1 load
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[27] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[27]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[27] run data modify storage backpack:temp cart[-1].Slot set value 0b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[28] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[28]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[28] run data modify storage backpack:temp cart[-1].Slot set value 1b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[29] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[29]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[29] run data modify storage backpack:temp cart[-1].Slot set value 2b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[30] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[30]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[30] run data modify storage backpack:temp cart[-1].Slot set value 3b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[31] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[31]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[31] run data modify storage backpack:temp cart[-1].Slot set value 4b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[32] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[32]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[32] run data modify storage backpack:temp cart[-1].Slot set value 5b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[33] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[33]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[33] run data modify storage backpack:temp cart[-1].Slot set value 6b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[34] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[34]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[34] run data modify storage backpack:temp cart[-1].Slot set value 7b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[35] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[35]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[35] run data modify storage backpack:temp cart[-1].Slot set value 8b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[36] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[36]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[36] run data modify storage backpack:temp cart[-1].Slot set value 9b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[37] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[37]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[37] run data modify storage backpack:temp cart[-1].Slot set value 10b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[38] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[38]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[38] run data modify storage backpack:temp cart[-1].Slot set value 11b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[39] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[39]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[39] run data modify storage backpack:temp cart[-1].Slot set value 12b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[40] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[40]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[40] run data modify storage backpack:temp cart[-1].Slot set value 13b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[41] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[41]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[41] run data modify storage backpack:temp cart[-1].Slot set value 14b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[42] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[42]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[42] run data modify storage backpack:temp cart[-1].Slot set value 15b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[43] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[43]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[43] run data modify storage backpack:temp cart[-1].Slot set value 16b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[44] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[44]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[44] run data modify storage backpack:temp cart[-1].Slot set value 17b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[45] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[45]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[45] run data modify storage backpack:temp cart[-1].Slot set value 18b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[46] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[46]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[46] run data modify storage backpack:temp cart[-1].Slot set value 19b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[47] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[47]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[47] run data modify storage backpack:temp cart[-1].Slot set value 20b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[48] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[48]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[48] run data modify storage backpack:temp cart[-1].Slot set value 21b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[49] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[49]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[49] run data modify storage backpack:temp cart[-1].Slot set value 22b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[50] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[50]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[50] run data modify storage backpack:temp cart[-1].Slot set value 23b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[51] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[51]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[51] run data modify storage backpack:temp cart[-1].Slot set value 24b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[52] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[52]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[52] run data modify storage backpack:temp cart[-1].Slot set value 25b
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[53] run data modify storage backpack:temp cart append from storage backpack:data players.Slot$(pid).items[53]
execute if score @s backpack.page matches 1 if data storage backpack:data players.Slot$(pid).items[53] run data modify storage backpack:temp cart[-1].Slot set value 26b

data modify entity @e[type=chest_minecart,tag=backpack.ui.active,limit=1,sort=nearest] Items set from storage backpack:temp cart

# Pad storage for large tier
execute if score @s backpack.temp matches 2.. run function backpack:open/ensure_capacity with storage backpack:temp
