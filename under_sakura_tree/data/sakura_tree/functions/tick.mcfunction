#死亡数を監視し、死亡したプレイヤーに処理用タグを付与
execute as @a[scores={sakura_death=1}] run tag @s add death_player

#処理用タグを付与したプレイヤー起点・プレイヤーとして死亡時コマンドを実行
execute as @a[tag=death_player] at @s run function sakura_tree:death_command