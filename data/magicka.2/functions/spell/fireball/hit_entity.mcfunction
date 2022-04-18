#As/At: Spell that hit something

#sound
playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 1 .7

#particles
particle minecraft:flame ~ ~ ~ .6 .8 .6 0 10 force
particle minecraft:large_smoke ~ ~ ~ 1 .8 1 0 30 force
particle minecraft:flame ~ ~.3 ~ .2 .4 .2 0 30 force

#burn
scoreboard players set #effect_chance sourcecraft.temp 5
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function magicka.2:spell_effects/burn/determine_burn

#deal damage
scoreboard players set #apply_health sourcecraft.temp -3
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function #sourcecraft:apply_health