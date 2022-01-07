execute if score @s sakura_ruikei matches 100 run advancement grant @s only sakura_tree:05ruikei/100
execute if score @s sakura_ruikei matches 250 run advancement grant @s only sakura_tree:05ruikei/250
execute if score @s sakura_ruikei matches 500 run advancement grant @s only sakura_tree:05ruikei/500
execute if score @s sakura_ruikei matches 750 run advancement grant @s only sakura_tree:05ruikei/750
execute if score @s sakura_ruikei matches 999 run advancement grant @s only sakura_tree:05ruikei/999
execute if score @s sakura_ruikei matches 999 run tag @s add ruikei_complete
advancement grant @s[tag=small_complete,tag=medium_complete,tag=large_complete,tag=max_complete] only sakura_tree:complete
