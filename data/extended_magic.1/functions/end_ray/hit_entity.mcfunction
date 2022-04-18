#As/At: Spell that hit an entity

#hit entity api call
function #minecraft:spells_hit_entity

#end ray
execute if entity @s[tag=bcmpp_hitscan] run scoreboard players set #extended_magic.end_ray extended_magic.temp 1

#kill ray
kill @s