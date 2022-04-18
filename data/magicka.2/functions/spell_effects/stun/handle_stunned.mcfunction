# handles entites that are stunned

#particle
particle minecraft:angry_villager ~ ~ ~ .15 .3 .15 0 25 force

#effect
effect give @s minecraft:slowness 1 100 true 
effect give @s minecraft:mining_fatigue 1 100 true 
effect give @s minecraft:jump_boost 1 128 true

#dwindle effect time
scoreboard players remove @s magicka.stunned 1

#effect cooldown
execute if score @s magicka.stunned matches 1.. run scoreboard players set @s magicka.stunnedT 20