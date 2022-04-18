#As/At: Spell that missed

#missed api call
function #minecraft:spells_miss

#end ray
execute if entity @s[tag=bcmpp_hitscan] run scoreboard players set #extended_magic.end_ray extended_magic.temp 1

#kill ray
kill @s