#As/At: Spell that hit something

#sound
playsound minecraft:entity.evoker_fangs.attack ambient @a ~ ~ ~ 1 2

#mark entity for pulling
execute store result score @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] magicka.pulling run scoreboard players get @s sourcecraft.ID
scoreboard players set @e[type=!#sourcecraft.2:no_health,limit=1,sort=nearest,tag=!global.ignore] magicka.pull_speed 1