# sheep:ultimate/type/purple/main

scoreboard players set @s s_ulti_dura 1

# summon center and follower
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_ulti_purple","sheep_ulti_purple_mark","sheep_new"]}
execute at @s run summon minecraft:sheep ~ ~ ~ {Tags:["sheep_ulti_purple","sheep_ulti_purple_s","sheep_ulti_purple_s1","sheep_new"],Color:14,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
execute at @s run summon minecraft:sheep ~ ~ ~ {Tags:["sheep_ulti_purple","sheep_ulti_purple_s","sheep_ulti_purple_s2","sheep_new"],Color:14,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
execute at @s run summon minecraft:sheep ~ ~ ~ {Tags:["sheep_ulti_purple","sheep_ulti_purple_s","sheep_ulti_purple_s3","sheep_new"],Color:14,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}

# add score
tag @s add player_temp
execute as @e[tag=sheep_new] store result score @s s_thrower_id run scoreboard players get @a[tag=player_temp,limit=1] s_id
tag @s remove player_temp

tag @e[tag=sheep_new] remove sheep_new