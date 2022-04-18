# handles entites that are heal negated

#particle
particle minecraft:enchanted_hit ~ ~1 ~ .1 .3 .1 0 15 force

#remove healing effects
effect clear @s absorption
effect clear @s health_boost
effect clear @s regeneration
effect clear @s instant_health
effect clear @s saturation

#get current health
execute store result score #current_health sourcecraft.temp run data get entity @s Health

#start lock health
execute unless score @s magicka.health_lock matches 1.. run scoreboard players operation @s magicka.health_lock = #current_health sourcecraft.temp

#if their health is over their health lock set it back
execute unless score @s magicka.health_lock >= #current_health sourcecraft.temp run function magicka.2:spell_effects/heal_negate/lock_health

#lock health
scoreboard players operation @s magicka.health_lock = #current_health sourcecraft.temp

#dwindle effect time
scoreboard players remove @s magicka.heal_negated 1

#reset health lock
execute unless score @s magicka.heal_negated matches 0.. run scoreboard players reset @s magicka.health_lock

#effect cooldown
execute if score @s magicka.heal_negated matches 0.. run scoreboard players set @s magicka.heal_negatedT 20