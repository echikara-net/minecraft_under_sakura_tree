#死亡数を監視し、死亡したプレイヤーに処理用タグを付与
execute as @a[scores={sakura_death=1}] run tag @s add death_player