# free/tick

# class
function lobby/change_class
# team
function lobby/change_team/main
# enter game
function lobby/enter_game
# change mode
function lobby/start_game/tick
# effect
function lobby/effect
# credit
execute as @e[tag=system_credit_display,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..5] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_credit_display,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..5] run data merge entity @s {CustomNameVisible:0}



# death time
scoreboard players set @a death_time_max 0
scoreboard players set @a death_time 0

# back item
tp @a[scores={drop_brick=1..}] -166 9 -118
scoreboard players reset @a[scores={drop_brick=1..}] drop_brick

# gamemode 3
#tp @a[gamemode=spectator] -166 9 -118
#gamemode adventure @a[gamemode=spectator]