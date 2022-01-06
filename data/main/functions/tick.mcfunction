# Desc: Controls all function to run on the server. Make funtions run much less
# Thanks to: https://xisumavoid.com/vanillatweaks/
# Called by: #minecraft:tick

# Tick Counter Scoreboard + 1
scoreboard players add #bss_tick bss_tick 1

# Every 1 second (20 ticks)
execute if score #bss_tick bss_tick matches 50 run function #main:second

# Every 1 second just after previous tick (cooldown)
execute if score #bss_tick bss_tick matches 2 if score #bss_cooldown bss_cooldown matches 1 run scoreboard players set #bss_cooldown bss_cooldown 0
execute if score #bss_tick bss_tick matches 22 if score #bss_cooldown bss_cooldown matches 1 run scoreboard players set #bss_cooldown bss_cooldown 0
execute if score #bss_tick bss_tick matches 42 if score #bss_cooldown bss_cooldown matches 1 run scoreboard players set #bss_cooldown bss_cooldown 0
execute if score #bss_tick bss_tick matches 62 if score #bss_cooldown bss_cooldown matches 1 run scoreboard players set #bss_cooldown bss_cooldown 0
execute if score #bss_tick bss_tick matches 82 if score #bss_cooldown bss_cooldown matches 1 run scoreboard players set #bss_cooldown bss_cooldown 0

# Checks for named items in frames for applying frame tags
execute if score #bss_tick bss_tick matches 99 run function bss:tagger

# Reset tick counter to zero at 100 ticks
execute if score #bss_tick bss_tick matches 100.. run scoreboard players set #bss_tick bss_tick 0