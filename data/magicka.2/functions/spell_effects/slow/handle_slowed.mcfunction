# handles entites that are slowed

#particle
particle minecraft:snowflake ~ ~1 ~ .1 .3 .1 0 15 force

#effect
effect give @s minecraft:slowness 1 1 true
effect give @s minecraft:jump_boost 1 128 true
effect clear @s minecraft:dolphins_grace
effect clear @s minecraft:haste
effect clear @s minecraft:speed

#dwindle effect time
scoreboard players remove @s magicka.slowed 1

#effect cooldown
execute if score @s magicka.slowed matches 1.. run scoreboard players set @s magicka.slowedT 20