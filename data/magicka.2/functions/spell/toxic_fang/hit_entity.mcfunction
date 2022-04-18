#As/At: Spell that hit something

#sound
playsound minecraft:block.composter.fill_success ambient @a ~ ~ ~ 1 .75

#particles
particle minecraft:smoke ~ ~ ~ .75 .3 .75 0 65 force
particle minecraft:falling_dust minecraft:green_terracotta ~ ~ ~ .75 0 .75 1 25 force

#poison fang
execute at @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function magicka.2:spell/toxic_fang/effect/summon_poison_fang

#deal damage
scoreboard players set #apply_health sourcecraft.temp -3
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function #sourcecraft:apply_health

#heal negate
scoreboard players set #effect_chance sourcecraft.temp 5
execute as @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] run function magicka.2:spell_effects/heal_negate/determine_heal_negate