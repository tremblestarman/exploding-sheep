summon minecraft:skeleton ~ ~ ~ {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}},{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"法师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss1","monster_boss","boss_fight_monster","boss_undead"],Attributes:[{Base:10.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:10.0f,PersistenceRequired:1b,FallFlying:1b}

summon minecraft:evoker ~ ~ ~ {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"HerobrineXia",Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"召唤师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss2","monster_boss","boss_fight_monster","boss_normal","real_boss2"],Attributes:[{Base:10.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:10.0f,PersistenceRequired:1b,FallFlying:1b}
scoreboard players set 羊种类 boss_2_pass 1

summon minecraft:zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:3}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"泰坦\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss3","monster_boss","boss_fight_monster","boss_undead"],Attributes:[{Base:10.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:10.0f,PersistenceRequired:1b,FallFlying:1b}

tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"死去的洞穴守卫者","color":"gold"},{"text":"，请尽快击毙他们!","color":"white"}]


scoreboard players set 大招冷却时间 boss_4_cool 0