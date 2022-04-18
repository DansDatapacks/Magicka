# handles entites that are burned

#particle
particle minecraft:flame ~ ~1 ~ .1 .3 .1 0 15 force

#damage
scoreboard players set #apply_health sourcecraft.temp -2
execute as @s run function #sourcecraft:apply_health

#dwindle effect time
scoreboard players remove @s magicka.burned 1

#effect cooldown
execute if score @s magicka.burned matches 1.. run scoreboard players set @s magicka.burnedT 20