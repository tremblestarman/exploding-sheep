# public/random_teleport

execute positioned 0 0 0 run spreadplayers ~ ~ 30 30 false @s

execute at @s if entity @s[y=18,dy=256] run function game_mode/public/random_teleport