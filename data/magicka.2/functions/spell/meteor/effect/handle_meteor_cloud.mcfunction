# handle meteor cloud

#particle
execute at @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] run particle minecraft:campfire_cosy_smoke ~ ~25 ~ 3 2.5 3 0 30 force

#landing zone indication
execute at @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] run function magicka.2:spell/meteor/effect/landing_zone

#summon meteor
execute as @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] if score @s magicka.time matches 10 at @s run function magicka.2:spell/meteor/effect/summon_meteor

#meteor hits ground
execute as @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] if score @s magicka.time matches 38 at @s run function magicka.2:spell/meteor/effect/meteor_land

#increase time
scoreboard players add @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] magicka.time 1

#loop if there are any active meteor clouds
execute if entity @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud] run schedule function magicka.2:spell/meteor/effect/handle_meteor_cloud 1t replace