# core/center/slice

execute at @s rotated ~ 0 positioned ^ ^ ^8 rotated ~180 -55 run function minecraft:core/center/block
scoreboard players set @s s_temp4 0
execute at @s run tp @s ~ ~ ~ ~10 ~