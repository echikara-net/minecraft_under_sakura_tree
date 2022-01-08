#木の抽選・媒介アイテム生成
loot spawn ~ ~ ~ loot sakura_tree:large_tree

#媒介アイテムに沿った木の生成
execute as @e[type=item,tag=sakura_large_01] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:large_1",posX:-5,posY:0,posZ:-6}
execute as @e[type=item,tag=sakura_large_02] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:large_2",posX:-6,posY:0,posZ:-6}
execute as @e[type=item,tag=sakura_large_03] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:large_3",posX:-9,posY:0,posZ:-8}
execute as @e[type=item,tag=sakura_large_04] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:large_4",posX:-7,posY:0,posZ:-8}

#媒介アイテム撤去
execute as @e[type=item,tag=sakura_generate] run kill @s

#共通生成部分
function sakura_tree:generate_tree/go

#本数カウント追加
scoreboard players add @s sakura_large 1

#進捗判定
function sakura_tree:advancements/large