# run hitscan travel

#set travel type
scoreboard players set #travel bcmpp_default 2

#handle recursion
execute unless score #recurse bcmpp_mray_age matches 1.. run scoreboard players set #recurse bcmpp_mray_age 20
scoreboard players remove #recurse bcmpp_mray_age 1

#increase ray age
scoreboard players add @s bcmpp_mray_age 1

# Tp distance is also used in spell_stop/hit_block to move spell back.
tp @s ^ ^ ^0.2

#trigger spell travel
function #minecraft:spells_travel

#hit detection
function bertiecrafter:mpp/wand/detect_hit

#hit block
execute if score #result bcmpp_hit matches 1 run function extended_magic.1:end_ray/hit_block

#hit entity
execute if score #result bcmpp_hit matches 2 run function extended_magic.1:end_ray/hit_entity

#missed
execute if score #result bcmpp_hit matches 0 if score @s bcmpp_mray_age >= @s extended_magic.range run function extended_magic.1:end_ray/miss

#still traveling
execute if score #result bcmpp_hit matches 0 unless score @s bcmpp_mray_age >= @s extended_magic.range if score #recurse bcmpp_mray_age matches 1.. at @s run function extended_magic.1:travel/linear