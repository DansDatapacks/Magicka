#summmons poison fang

#spawn
summon evoker_fangs ~ ~ ~ {Tags:["magicka.poison_fang","magicka.poison_fang_init","global.ignore"]}

#schedule poison fang for deletion before its damage tick
execute store result score #current_gametime sourcecraft.temp run time query gametime
execute store result score @e[type=minecraft:evoker_fangs,tag=magicka.poison_fang_init,sort=nearest,limit=1] magicka.queued run scoreboard players add #current_gametime sourcecraft.temp 7
execute run tag @e[type=minecraft:evoker_fangs,tag=magicka.poison_fang_init,sort=nearest,limit=1] remove magicka.poison_fang_init
schedule function magicka.2:spell/toxic_fang/effect/remove_poison_fang 7t