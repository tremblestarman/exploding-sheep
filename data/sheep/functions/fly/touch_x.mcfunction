# sheep:fly/touch_x

# vx clear
scoreboard players set @s s_vx 0

# vz decay
scoreboard players set @s s_temp5 7
scoreboard players operation @s s_vz *= @s s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vz /= @s s_temp5

# move back
execute store result score @s s_temp5 run data get entity @s Pos[0] 1000
scoreboard players operation @s s_temp5 -= @s s_temp2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s s_temp5

# calculate split speed
function sheep:fly/split_speed

# add tag
tag @s[tag=!sheep_touch_x] add sheep_touch_x