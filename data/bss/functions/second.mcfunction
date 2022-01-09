# Runs every second via tick counter (main:tick)
# Locate any loose items ready to sort

# Farm Sort Section

execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:gold_block run function bss:sortfarm
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:amethyst_block run function bss:sortfarm

# Chest Room Sort Section

execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~-2 ~ minecraft:gold_block run function bss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:dirt if block ~ ~-2 ~ minecraft:gold_block run function bss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:obsidian if block ~ ~-2 ~ minecraft:gold_block run function bss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:target if block ~ ~-2 ~ minecraft:amethyst_block run function bss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:crimson_nylium if block ~ ~-2 ~ minecraft:gold_block run function bss:sort
execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:warped_nylium if block ~ ~-2 ~ minecraft:gold_block run function bss:sort