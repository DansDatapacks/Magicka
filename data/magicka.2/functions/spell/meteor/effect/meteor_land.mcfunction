# meteor lands

#particles
particle minecraft:lava ~ ~ ~ 2 1.8 2 0 50 force
particle minecraft:large_smoke ~ ~ ~ 2 1.8 2 0 60 force
particle minecraft:lava ~ ~.3 ~ .5 .8 .5 0 80 force

#sound
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 3 1

#tag self
tag @s add magicka.meteor_spell_meteor_executor

#kill meteor
execute as @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor] if score @s sourcecraft.ID = @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_executor,limit=1] sourcecraft.ID run kill @s

#burn
scoreboard players set #effect_time sourcecraft.temp 3
execute as @e[type=!#sourcecraft.2:no_health,distance=..5,tag=!global.ignore] run function magicka.2:spell_effects/burn/determine_burn

#damage
scoreboard players set #apply_health sourcecraft.temp -10
execute as @e[type=!#sourcecraft.2:no_health,distance=..5,tag=!global.ignore] run function #sourcecraft:apply_health

#kill meteor cloud
kill @s