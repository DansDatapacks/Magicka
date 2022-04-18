# runs effects on entities that were pierced

#sound
playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 0.5 0.5

#particles
particle minecraft:electric_spark ~ ~ ~ .4 .4 .4 0 30 force
particle minecraft:flash ~ ~ ~ .4 .4 .4 0 1 force

#stun
scoreboard players set #effect_chance sourcecraft.temp 35
scoreboard players set #effect_time sourcecraft.temp 2
execute as @e[type=!#sourcecraft.2:no_health,distance=..1.5,tag=!global.ignore] run function magicka.2:spell_effects/stun/determine_stun

#deal damage
scoreboard players set #apply_health sourcecraft.temp -5
execute as @e[type=!#sourcecraft.2:no_health,distance=..1.5,tag=!global.ignore] run function #sourcecraft:apply_health