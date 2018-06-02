# tick

function sheep:tick
function keep_items
execute unless entity @e[tag=system_core_mark_blue] run function keep_mark
execute unless entity @e[tag=system_core_mark_red] run function keep_mark

# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powder keep
scoreboard players set @e[scores={system_time=400}] system_time 0