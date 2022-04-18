# summon noxious cyclone

#summon noxious cyclone
summon minecraft:marker ~ ~ ~ {Tags:["magicka.noxious_cyclone_spell","magicka.noxious_cyclone_spell_init","magicka.pulling_marker","magicka.pulling_marker_invul","global.ignore"]}

#give noxious cyclone an ID
execute as @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell_init,limit=1] run function #sourcecraft:give_id

#if stuck in a block, tp it up
execute as @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell_init,limit=1] at @s unless block ~ ~ ~ #sourcecraft.2:passable run function magicka.2:utility/unstuck

#tp noxious cyclone marker down until it finds a block
execute as @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell_init,limit=1] run function magicka.2:utility/find_block_below

#remove tag
tag @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell_init,limit=1] remove magicka.noxious_cyclone_spell_init

#begin noxious cyclone handle
schedule function magicka.2:spell/noxious_cyclone/effect/handle_noxious_cyclone 1t replace