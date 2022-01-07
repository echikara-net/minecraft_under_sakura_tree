#進捗タブを持っていなかったら付与する
advancement grant @s only sakura_tree:root

#木生成用のアーマスタンド設置
execute at @s run summon armor_stand ~ ~ ~ {Tags:[tree_generate]}

#持っているアイテムを削除、その結果をスコアボードに代入
execute as @s store result score @s sakura_itemcount run clear @s

#アイテム数のスコアに応じてそれぞれの木生成コマンド実行
execute if score @s sakura_itemcount matches 0..64 run function sakura_tree:generate_tree/small
execute if score @s sakura_itemcount matches 65..1024 run function sakura_tree:generate_tree/medium
execute if score @s sakura_itemcount matches 1025..2303 run function sakura_tree:generate_tree/large
execute if score @s sakura_itemcount matches 2304.. run function sakura_tree:generate_tree/max_large

#死亡数を整理する
scoreboard players reset @s sakura_death


#累計本数カウント
scoreboard players add @s sakura_ruikei

#累計本数に応じて進捗を付与するためのコマンド実行
function sakura_tree:advancements/ruikei


#すべての処理終了後、タグを除去
tag @s remove death_player