# battle/start

# change flag
scoreboard players set game_status system 3

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0

# clear
clear @a
effect clear @a

# title
title @a times 10 50 10
title @a title ["清除对方水晶以获取胜利!"]

# score
scoreboard players reset * sidebar_score
scoreboard players set 红队 sidebar_score 0
scoreboard players set 蓝队 sidebar_score 0
scoreboard players set system_red_score system 276
scoreboard players set system_blue_score system 276

scoreboard players set system_home_time system -80
scoreboard players set system_corner_time system -80


# bossbar
bossbar add minecraft:red_score ["红队主水晶状态: ",{"text":"完好","color":"red"}]
bossbar set minecraft:red_score max 276
bossbar set minecraft:red_score value 276
bossbar set minecraft:red_score style notched_12
bossbar set minecraft:red_score color red
bossbar set minecraft:red_score players @a

bossbar add minecraft:blue_score ["蓝队主水晶状态: ",{"text":"完好","color":"blue"}]
bossbar set minecraft:blue_score max 276
bossbar set minecraft:blue_score value 276
bossbar set minecraft:blue_score style notched_12
bossbar set minecraft:blue_score color blue
bossbar set minecraft:blue_score players @a

# sidebar
scoreboard players reset * sidebar_red
scoreboard players reset * sidebar_blue
scoreboard objectives setdisplay sidebar.team.red sidebar_red
scoreboard objectives setdisplay sidebar.team.blue sidebar_blue