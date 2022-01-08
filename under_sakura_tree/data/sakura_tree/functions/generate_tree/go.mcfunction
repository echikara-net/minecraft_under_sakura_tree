#１ブロック上にredstone_block設置
execute at @s run setblock ~ ~1 ~ redstone_block

#ブロック撤去
execute at @s run setblock ~ ~1 ~ air replace redstone_block
