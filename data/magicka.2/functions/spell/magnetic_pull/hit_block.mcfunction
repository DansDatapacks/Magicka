#As/At: Spell that hit something

#sound
playsound minecraft:entity.evoker_fangs.attack ambient @a ~ ~ ~ 1 2

#summon marker for pulling
summon minecraft:marker ~ ~ ~ {Tags:["magicka.pulling_marker","magicka.pulling_marker_init","global.ignore"]}

#give marker ID
execute as @e[type=minecraft:marker,tag=magicka.pulling_marker_init,limit=1,sort=nearest] run function #sourcecraft:give_id

#store spell ray's ID
scoreboard players operation #ray_ID sourcecraft.temp = @s sourcecraft.ID

#find player that executed spell
execute as @a if score @s sourcecraft.ID = #ray_ID sourcecraft.temp run tag @s add magicka.pulling_player

#mark entity for pulling
execute store result score @a[tag=magicka.pulling_player,limit=1,sort=nearest] magicka.pulling run scoreboard players get @e[type=minecraft:marker,tag=magicka.pulling_marker_init,limit=1,sort=nearest] sourcecraft.ID
scoreboard players set @a[tag=magicka.pulling_player,limit=1,sort=nearest] magicka.pull_speed 1

#remove temp tags
tag @a[tag=magicka.pulling_player] remove magicka.pulling_player
tag @e[type=minecraft:marker,tag=magicka.pulling_marker_init] remove magicka.pulling_marker_init