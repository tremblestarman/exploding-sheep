# game_mode/group/get_score/start

# change flag
scoreboard players set game_status system 2

# tp
execute as @a run function game_mode/public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score

# title
title @a times 10 50 10
title @a title ["抢占中央砂堆!"]
title @a subtitle ["游戏开始"]
tellraw @a [">> 抢占地图中央的水晶砂堆，时间结束后拥有沙堆一方胜利!"]