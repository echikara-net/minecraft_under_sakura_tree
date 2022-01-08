#木の生成
setblock ~ ~ ~ structure_block{mode:"LOAD",name:"sakura_tree:max_large"}


#共通生成部分
function sakura_tree:generate_tree/go

#本数カウント追加
scoreboard players add @s sakura_max 1



#進捗判定
function sakura_tree:advancements/max_large