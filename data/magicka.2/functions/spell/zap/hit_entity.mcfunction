#As/At: Spell that hit something

#sound
playsound minecraft:entity.firework_rocket.twinkle ambient @a ~ ~ ~ 1 1.5

#particles
particle minecraft:electric_spark ~ ~ ~ .4 .4 .4 0 30 force
particle minecraft:flash ~ ~ ~ .4 .4 .4 0 1 force

#stun
scoreboard players set #effect_chance sourcecraft.temp 5
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function magicka.2:spell_effects/stun/determine_stun

#deal damage
scoreboard players set #apply_health sourcecraft.temp -3
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function #sourcecraft:apply_health