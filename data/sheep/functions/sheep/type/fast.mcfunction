# sheep:sheep/type/fast

summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_fast","sheep_new"],Color:11,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1}
scoreboard players remove @s s_bullet 4
tp @e[tag=sheep_mark,limit=1] ^ ^ ^1

scoreboard players set @e[tag=sheep_new] s_sheep_type 3