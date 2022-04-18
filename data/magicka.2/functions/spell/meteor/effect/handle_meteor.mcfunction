# handle meteor

#particles
execute at @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor] run particle minecraft:flame ~ ~ ~ 0.7 0.7 0.7 0 20
execute at @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor] run particle minecraft:large_smoke ~ ~ ~ 0.7 0.7 0.7 0 10

#delete before it hits ground
execute as @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor] at @s unless block ~ ~-0.6 ~ #sourcecraft.2:passable run kill @s

#loop if there are still any active fireballs
execute if entity @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor] run schedule function magicka.2:spell/meteor/effect/handle_meteor 1t replace