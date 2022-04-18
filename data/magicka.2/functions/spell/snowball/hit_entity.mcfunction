#As/At: Spell that hit something

#sound
playsound minecraft:block.snow.break ambient @a ~ ~ ~ 1 .7

#particles
particle minecraft:end_rod ~ ~ ~ .2 .4 .2 0 10 force
particle minecraft:item_snowball ~ ~ ~ .4 .4 .4 0 30 force

#slow
scoreboard players set #effect_chance sourcecraft.temp 5
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function magicka.2:spell_effects/slow/determine_slow

#deal damage
scoreboard players set #apply_health sourcecraft.temp -3
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function #sourcecraft:apply_health