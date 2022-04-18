# pull entities

#sound
#playsound minecraft:entity.chicken.step ambient @a ~ ~ ~ 0.5 0.5

#store current pulling score
scoreboard players operation #pulling_ID sourcecraft.temp = @s magicka.pulling

#find entity with ID that matches this entities pulling score
execute as @e[type=!#sourcecraft.2:no_health,tag=!global.ignore] if score @s sourcecraft.ID = #pulling_ID sourcecraft.temp run tag @s add magicka.pulling_to
execute unless entity @e[type=!#sourcecraft.2:no_health,tag=magicka.pulling_to,tag=!global.ignore] as @e[type=minecraft:marker,tag=magicka.pulling_marker] if score @s sourcecraft.ID = #pulling_ID sourcecraft.temp run tag @s add magicka.pulling_to

#pull this entity to the entity its supposed to be pulling to
execute if score @s magicka.pull_speed matches 1 facing entity @e[tag=magicka.pulling_to] feet positioned ^ ^ ^1.2 if block ~ ~2 ~ #sourcecraft.2:passable rotated as @s run tp ~ ~ ~
execute if score @s magicka.pull_speed matches 2 facing entity @e[tag=magicka.pulling_to] feet positioned ^ ^ ^0.4 if block ~ ~2 ~ #sourcecraft.2:passable rotated as @s run tp ~ ~ ~

#tp entity up if they are in the ground
execute at @s run function magicka.2:utility/unstuck

#stop if near pulling to entity
execute at @s if entity @e[tag=magicka.pulling_to,distance=..2] run scoreboard players reset @s magicka.pulling

#stop if attempting to tp them towards a block
execute if score @s magicka.pull_speed matches 1 facing entity @e[tag=magicka.pulling_to] feet positioned ^ ^ ^1.2 unless block ~ ~2 ~ #sourcecraft.2:passable run scoreboard players reset @s magicka.pulling
execute if score @s magicka.pull_speed matches 2 facing entity @e[tag=magicka.pulling_to] feet positioned ^ ^ ^0.4 unless block ~ ~2 ~ #sourcecraft.2:passable run scoreboard players reset @s magicka.pulling

#kill pulling markers
execute unless score @s magicka.pulling matches 1.. run kill @e[type=minecraft:marker,tag=magicka.pulling_marker,tag=magicka.pulling_to,tag=!magicka.pulling_marker_invul]

#remove temp tags
tag @e[tag=magicka.pulling_to] remove magicka.pulling_to