# core/center/clear

execute as @e[tag=system_core_mark_center] at @s run fill ~-9 ~ ~-9 ~9 ~10 ~9 minecraft:air replace #minecraft:concrete
execute as @e[tag=system_core_mark_center] at @s run kill @e[type=falling_block,distance=..20]