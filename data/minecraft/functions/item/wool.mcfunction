# sheep:item/wool

replaceitem entity @s hotbar.3 minecraft:white_wool{display:{Name:"[{\"text\":\"你拥有了 小白羊 \",\"color\":\"white\",\"italic\":false}]"}}
replaceitem entity @s hotbar.4 minecraft:barrier{display:{Name:"[{\"text\":\"...\",\"color\":\"gray\",\"italic\":false}]"}}
replaceitem entity @s hotbar.5 minecraft:barrier{display:{Name:"[{\"text\":\"...\",\"color\":\"gray\",\"italic\":false}]"}}
replaceitem entity @s hotbar.6 minecraft:barrier{display:{Name:"[{\"text\":\"...\",\"color\":\"gray\",\"italic\":false}]"}}
replaceitem entity @s hotbar.7 minecraft:barrier{display:{Name:"[{\"text\":\"...\",\"color\":\"gray\",\"italic\":false}]"}}
replaceitem entity @s hotbar.8 minecraft:barrier{display:{Name:"[{\"text\":\"...\",\"color\":\"gray\",\"italic\":false}]"}}

replaceitem entity @s[tag=sheep_own_heavy] hotbar.4 minecraft:gray_wool{display:{Name:"[{\"text\":\"你拥有了 \",\"color\":\"white\",\"italic\":false},{\"text\":\"小灰羊\",\"color\":\"gray\"}]"}}
replaceitem entity @s[tag=sheep_own_fast] hotbar.5 minecraft:blue_wool{display:{Name:"[{\"text\":\"你拥有了 \",\"color\":\"white\",\"italic\":false},{\"text\":\"小蓝羊\",\"color\":\"blue\"}]"}}
replaceitem entity @s[tag=sheep_own_air] hotbar.6 minecraft:red_wool{display:{Name:"[{\"text\":\"你拥有了 \",\"color\":\"white\",\"italic\":false},{\"text\":\"小红羊\",\"color\":\"red\"}]"}}
replaceitem entity @s[tag=sheep_own_web] hotbar.7 minecraft:light_blue_wool{display:{Name:"[{\"text\":\"你拥有了 \",\"color\":\"white\",\"italic\":false},{\"text\":\"小冰羊\",\"color\":\"aqua\"}]"}}
replaceitem entity @s[tag=sheep_own_heal] hotbar.8 minecraft:pink_wool{display:{Name:"[{\"text\":\"你拥有了 \",\"color\":\"white\",\"italic\":false},{\"text\":\"小粉羊\",\"color\":\"light_purple\"}]"}}

function minecraft:item/offhand_wool