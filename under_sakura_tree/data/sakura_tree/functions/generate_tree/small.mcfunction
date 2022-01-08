#木の抽選・媒介アイテム生成
loot spawn ~ ~ ~ loot sakura_tree:small_tree

#媒介アイテムに沿った木の生成
execute at @e[type=item,tag=sakura_small_01] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_1",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_02] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_2",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_03] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_3",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_04] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_4",posX:-2,posY:0,posZ:-3}
execute at @e[type=item,tag=sakura_small_05] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_5",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_06] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_6",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_07] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_7",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_08] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_8",posX:-2,posY:0,posZ:-2}
execute at @e[type=item,tag=sakura_small_09] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_9",posX:-2,posY:0,posZ:-3}
execute at @e[type=item,tag=sakura_small_10] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:small_10",posX:-2,posY:0,posZ:-2}

#媒介アイテム撤去
kill @e[type=item,tag=sakura_generate,distance=..1]

#共通生成部分
function sakura_tree:generate_tree/go

#本数カウント追加
scoreboard players add @s sakura_small 1

#進捗判定
function sakura_tree:advancements/small