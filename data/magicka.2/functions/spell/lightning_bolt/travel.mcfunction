#As/At: Traveling spell

#particles
particle minecraft:electric_spark ^ ^ ^ .01 .01 .01 1 0 force

#spinning particle
scoreboard players add @s magicka.time 1
function magicka.2:spell/lightning_bolt/effect/spinning_particle
execute if score @s magicka.time matches 30.. run scoreboard players reset @s magicka.time