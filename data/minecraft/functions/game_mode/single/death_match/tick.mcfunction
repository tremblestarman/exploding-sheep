# death_match/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect



# cal time
scoreboard players remove system_game_time system 1
# display time
execute store result bossbar minecraft:score_time value run scoreboard players get system_game_time system
scoreboard players operation system_second system = system_game_time system
scoreboard players operation system_second system /= system_twenty system
scoreboard players operation system_minute system = system_second system
scoreboard players operation system_minute system /= system_sixty system
scoreboard players operation system_second system %= system_sixty system
execute if score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":0",{"score":{"name":"system_second","objective":"system"}}]
execute unless score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":",{"score":{"name":"system_second","objective":"system"}}]

# display score
execute as @a[team=yellow] store result score @s sidebar_score run scoreboard players get @s kill_player

# check end
execute if score system_game_time system matches ..0 run function game_mode/single/death_match/end
