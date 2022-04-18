# run noxious cyclones

#zone
execute rotated 0 ~ run function magicka.2:spell/noxious_cyclone/effect/zone

#rotate
tp @s ~ ~ ~ ~15 ~

#particles
particle minecraft:dust 0.000 0.459 0.063 3 ^.5 ^.2 ^ 0 0 0 4 0 force
particle minecraft:dust 0.000 0.459 0.063 3 ^ ^.9 ^-.8 0 0 0 4 0 force
particle minecraft:dust 0.000 0.459 0.063 3 ^-1 ^1.6 ^ 0 0 0 4 0 force
particle minecraft:dust 0.000 0.459 0.063 3 ^ ^2.3 ^1.2 0 0 4 1 0 force
particle minecraft:dust 0.000 0.459 0.063 3 ^1.4 ^3 ^ 0 0 4 1 0 force

#increase time
scoreboard players add @s magicka.time 1

#store current ID
scoreboard players operation #current_ID sourcecraft.temp = @s sourcecraft.ID

#give pulling id to nearby entities
execute as @e[type=!#sourcecraft.2:no_health,distance=..5,tag=!global.ignore] unless score @s magicka.pulling matches 1.. run scoreboard players set @s magicka.pull_speed 2
execute as @e[type=!#sourcecraft.2:no_health,distance=..5,tag=!global.ignore] unless score @s magicka.pulling matches 1.. run scoreboard players operation @s magicka.pulling = #current_ID sourcecraft.temp

#check for second passed
scoreboard players operation #seconds sourcecraft.temp = @s magicka.time
scoreboard players operation #seconds sourcecraft.temp %= #20 sourcecraft.data

#deal damage
execute if score #seconds sourcecraft.temp matches 0 run scoreboard players set #apply_health sourcecraft.temp -2
execute if score #seconds sourcecraft.temp matches 0 run execute as @e[type=!#sourcecraft.2:no_health,distance=..1.5,tag=!global.ignore] run function #sourcecraft:apply_health

#heal negate
execute if score #seconds sourcecraft.temp matches 0 run scoreboard players set #effect_chance sourcecraft.temp 20
execute if score #seconds sourcecraft.temp matches 0 run execute as @e[type=!#sourcecraft.2:no_health,distance=..1.5,tag=!global.ignore] run function magicka.2:spell_effects/heal_negate/determine_heal_negate

#remove pulling id from entities too far
execute as @e[type=!#sourcecraft.2:no_health,distance=5.1..,tag=!global.ignore] if score @s magicka.pulling = #current_ID sourcecraft.temp run scoreboard players reset @s magicka.pulling

#remove pulling id on end
execute if score @s magicka.time matches 100 at @s as @e[type=!#sourcecraft.2:no_health,tag=!global.ignore] if score @s magicka.pulling = #current_ID sourcecraft.temp run scoreboard players reset @s magicka.pulling

#end noxious cyclone
execute if score @s magicka.time matches 100 at @s run kill @s