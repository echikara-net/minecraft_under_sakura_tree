#木の抽選・媒介アイテム生成
loot spawn ~ ~ ~ loot sakura_tree:medium_tree

#媒介アイテムに沿った木の生成
execute as @e[type=item,tag=sakura_medium_01] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_1",posX:-2,posY:0,posZ:-3}
execute as @e[type=item,tag=sakura_medium_02] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_2",posX:-3,posY:0,posZ:-4}
execute as @e[type=item,tag=sakura_medium_03] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_3",posX:-3,posY:0,posZ:-3}
execute as @e[type=item,tag=sakura_medium_04] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_4",posX:-3,posY:0,posZ:-2}
execute as @e[type=item,tag=sakura_medium_05] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_5",posX:-3,posY:0,posZ:-3}
execute as @e[type=item,tag=sakura_medium_06] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_6",posX:-3,posY:0,posZ:-3}
execute as @e[type=item,tag=sakura_medium_07] at @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:medium_7",posX:-3,posY:0,posZ:-3}

#媒介アイテム撤去
execute as @e[type=item,tag=sakura_generate] run kill @s
#共通生成部分
function sakura_tree:generate_tree/go

#本数カウント追加
scoreboard players add @s sakura_medium 1

#進捗判定
function sakura_tree:advancements/medium

