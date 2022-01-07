#基準アーマースタンドの１ブロック上にredstone_block設置
execute at @e[type=armor_stand,tag=tree_generate,distance=..20] run setblock ~ ~1 ~ redstone_block

#ブロック撤去
execute at @e[type=armor_stand,tag=tree_generate,distance=..20] run setblock ~ ~1 ~ air replace redstone_block

#基準アーマースタンド撤去
kill @e[type=armor_stand,tag=tree_generate,distance=..20]