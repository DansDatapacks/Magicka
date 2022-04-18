# lightning lands

#determine if they are stunned
scoreboard players set #effect_time sourcecraft.temp 3
execute as @e[type=!#sourcecraft.2:no_health,distance=..2.8,tag=!global.ignore] run function magicka.2:spell_effects/stun/determine_stun

#damage
# scoreboard players set #apply_health sourcecraft.temp -5
# execute as @e[type=!#sourcecraft.2:no_health,distance=..2.8,tag=!global.ignore] run function #sourcecraft:apply_health

#kill lightning bolt
kill @s