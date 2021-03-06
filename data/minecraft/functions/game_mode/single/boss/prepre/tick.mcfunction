# game_mode/single/boss/prepre/tick

# 倒计时
scoreboard players remove system_start_countdown system 1

# 提示
# title
execute if score system_start_countdown system matches 200 run title @a subtitle [{"text":"战斗将在10秒后开始","color":"white"}]
execute if score system_start_countdown system matches 100 run title @a subtitle ["5"]
execute if score system_start_countdown system matches 80 run title @a subtitle ["4"]
execute if score system_start_countdown system matches 60 run title @a subtitle [{"text":"3","color":"yellow"}]
execute if score system_start_countdown system matches 40 run title @a subtitle [{"text":"2","color":"gold"}]
execute if score system_start_countdown system matches 20 run title @a subtitle [{"text":"1","color":"red"}]


# display time
execute store result bossbar minecraft:score_time value run scoreboard players get system_start_countdown system
scoreboard players operation system_temp system = system_start_countdown system
scoreboard players operation system_temp system /= twenty system
bossbar set minecraft:score_time name ["剩余时间: ",{"score":{"name":"system_temp","objective":"system"}},"秒"]
scoreboard players operation boss战倒计时(秒) sidebar_score = system_temp system


team join yellow @a[tag=team_leader]

# 选羊和队伍
function minecraft:lobby/change_class
function minecraft:lobby/change_team/main

# effect
effect give @a minecraft:resistance 5 5 true
effect give @a minecraft:instant_health 1 0 true

# start
execute if score system_start_countdown system matches 0 run function game_mode/single/boss/main