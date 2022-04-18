# summon meteor

#summon meteor cloud
summon minecraft:marker ~ ~ ~ {Tags:["magicka.meteor_spell_meteor_cloud","magicka.meteor_spell_meteor_cloud_init","global.ignore"]}

#give meteor cloud an ID
execute as @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud_init,limit=1] run function #sourcecraft:give_id

#if stuck in a block, tp it up
execute as @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud_init,limit=1] at @s unless block ~ ~ ~ #sourcecraft.2:passable run function magicka.2:utility/unstuck

#tp meteor cloud marker down until it finds a block
execute as @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud_init,limit=1] run function magicka.2:utility/find_block_below

#remove tag
tag @e[type=minecraft:marker,tag=magicka.meteor_spell_meteor_cloud_init,limit=1] remove magicka.meteor_spell_meteor_cloud_init

#begin meteor handle
schedule function magicka.2:spell/meteor/effect/handle_meteor_cloud 1t replace