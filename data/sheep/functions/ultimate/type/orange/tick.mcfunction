# sheep:ultimate/type/orange/tick

# tag target player or sk
execute at @s run tag @e[tag=monster,sort=random,distance=..10,limit=1] add sheep_target
execute unless entity @e[tag=sheep_target] as @s[tag=sheep_team_red] at @s run tag @a[sort=random,distance=..10,limit=1,team=blue] add sheep_target
execute unless entity @e[tag=sheep_target] as @s[tag=sheep_team_blue] at @s run tag @a[sort=random,distance=..10,limit=1,team=red] add sheep_target
execute unless entity @e[tag=sheep_target] as @s[tag=!sheep_team_blue,tag=!sheep_team_red] at @s run tag @a[sort=random,distance=..10,limit=1] add sheep_target

# summon sheep
execute at @s run function sheep:launch/type/orange_small
# turn the sheep's face
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=sheep_target,limit=1]
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ ~ 0

# summon marker
execute as @e[tag=sheep_new,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["sheep_mark"]}







# give sheep v0
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vx run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

scoreboard players set @e[tag=sheep_new,limit=1] s_vy 0

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vz run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

# cal distance
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 100
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp2 run data get entity @s Pos[2] 100
execute as @e[tag=sheep_target,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 100
execute as @e[tag=sheep_target,limit=1] store result score @s s_temp2 run data get entity @s Pos[2] 100
scoreboard players operation @e[tag=sheep_new,limit=1] s_temp1 -= @e[tag=sheep_target,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_new,limit=1] s_temp2 -= @e[tag=sheep_target,limit=1] s_temp2
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp1 *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp2 *= @s s_temp2
scoreboard players set @e[tag=sheep_new,limit=1] s_temp7 0
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 += @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 += @s s_temp2
execute as @e[tag=sheep_new,limit=1] run function lobby/launch_sheep/sqrt
# cal vy
scoreboard players set @e[tag=sheep_new,limit=1] s_temp1 10
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run function lobby/launch_sheep/sqrt
scoreboard players set @e[tag=sheep_new,limit=1] s_temp2 5
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 *= @s s_temp2
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vy = @s s_temp7
# cal vxz
scoreboard players set @e[tag=sheep_new,limit=1] s_temp1 1000
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vx *= @s s_temp7
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vz *= @s s_temp7
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vx /= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vz /= @s s_temp1

# ratio
scoreboard players set @e[tag=sheep_new,limit=1] s_temp1 95
scoreboard players set @e[tag=sheep_new,limit=1] s_temp2 100
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vx *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vy *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vz *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vx /= @s s_temp2
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vy /= @s s_temp2
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vz /= @s s_temp2






# add player's id
execute store result score @e[tag=sheep_new,limit=1] s_thrower_id run scoreboard players get @s s_thrower_id
# add player's team
execute if entity @s[tag=sheep_team_red] run tag @e[tag=sheep_new,limit=1] add sheep_team_red
execute if entity @s[tag=sheep_team_blue] run tag @e[tag=sheep_new,limit=1] add sheep_team_blue
# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# kill marker and remove temp tag
kill @e[tag=sheep_mark]
tag @e[tag=sheep_new] remove sheep_new
tag @e[tag=sheep_target] remove sheep_target