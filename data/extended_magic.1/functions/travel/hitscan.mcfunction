# run hitscan travel

#set travel type
scoreboard players set #travel bcmpp_default 2

#increase ray age
scoreboard players add @s bcmpp_mray_age 1

# Tp distance is also used in spell_stop/hit_block to move spell back.
tp @s ^ ^ ^0.2

#trigger spell travel
function #minecraft:spells_travel

#hit detection
function bertiecrafter:mpp/wand/detect_hit

#hit block
execute if score #result bcmpp_hit matches 1 unless entity @s[tag=extended_magic.piercing] run function extended_magic.1:end_ray/hit_block
execute if score #result bcmpp_hit matches 1 if entity @s[tag=extended_magic.piercing] run function extended_magic.1:end_ray/hitscan/piercing/hit_block

#hit entity
execute if score #result bcmpp_hit matches 2 unless entity @s[tag=extended_magic.piercing] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=!#bertiecrafter:mpp/spell_ignored,dx=0,dy=0,dz=0,tag=extended_magic.spell_executor] unless entity @e[type=!#bertiecrafter:mpp/spell_ignored,dx=0,dy=0,dz=0,tag=extended_magic.pierced_entity] positioned ~0.5 ~0.5 ~0.5 run function extended_magic.1:end_ray/hit_entity
execute if score #result bcmpp_hit matches 2 if entity @s[tag=extended_magic.piercing] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=!#bertiecrafter:mpp/spell_ignored,dx=0,dy=0,dz=0,tag=extended_magic.spell_executor] unless entity @e[type=!#bertiecrafter:mpp/spell_ignored,dx=0,dy=0,dz=0,tag=extended_magic.pierced_entity] positioned ~0.5 ~0.5 ~0.5 run function extended_magic.1:end_ray/hitscan/piercing/hit_entity

#missed
execute if score #result bcmpp_hit matches 0 unless entity @s[tag=extended_magic.piercing] if score @s bcmpp_mray_age >= @s extended_magic.range run function extended_magic.1:end_ray/miss
execute if score #result bcmpp_hit matches 0 if entity @s[tag=extended_magic.piercing] if score @s bcmpp_mray_age >= @s extended_magic.range run function extended_magic.1:end_ray/hitscan/piercing/miss

#still traveling
execute unless score #extended_magic.end_ray extended_magic.temp matches 1 unless score #result bcmpp_hit matches 1 unless score @s bcmpp_mray_age >= @s extended_magic.range at @s run function extended_magic.1:travel/hitscan
execute if score #extended_magic.end_ray extended_magic.temp matches 1 run function extended_magic.1:end_ray/hitscan/end_ray