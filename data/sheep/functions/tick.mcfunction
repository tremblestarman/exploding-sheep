# sheep:tick

# shoot or fan
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 50

execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 100

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 80

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 80

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=5},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 120

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] run scoreboard players remove @s s_energy 120

execute as @a[scores={s_launch=1..,s_fan_cd=10..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
execute as @a[scores={s_launch=1..,s_fan_cd=10..},nbt={SelectedItemSlot:1}] run scoreboard players set @s s_fan_cd 0

scoreboard players set @a[scores={s_launch=1..}] s_launch 0


# fan cd
scoreboard players add @a[scores={s_fan_cd=..9}] s_fan_cd 1
scoreboard players add @a s_fan_cd 0




# sub
function sheep:blow/tick
function sheep:fan/tick
function sheep:reload/tick
execute as @e[tag=sheep_sheep] run function sheep:fly/tick
function sheep:change_color

# web
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
execute as @e[scores={s_web_time=1}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:cobweb keep
execute as @e[scores={s_web_time=1}] at @s run particle block cobweb ~ ~0.5 ~ 2 0 2 0 20
execute as @e[scores={s_web_time=101..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:cobweb
kill @e[scores={s_web_time=101..}]