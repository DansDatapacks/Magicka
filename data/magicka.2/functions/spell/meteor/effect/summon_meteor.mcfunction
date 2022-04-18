# summon meteor

#summon meteor
summon minecraft:fireball ~ ~25 ~ {ExplosionPower:0b,power:[0.0,-0.1,0.0],Tags:["magicka.meteor_spell_meteor","magicka.meteor_spell_meteor_init","global.ignore"],Silent:1b,}

#give meteor the same ID as the meteor cloud
execute store result score @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor_init,limit=1] sourcecraft.ID run scoreboard players get @s sourcecraft.ID

#remove tag
tag @e[type=minecraft:fireball,tag=magicka.meteor_spell_meteor_init,limit=1] remove magicka.meteor_spell_meteor_init

#start handling meteors
schedule function magicka.2:spell/meteor/effect/handle_meteor 1t replace