#As/At: Spell that hit a block

#move ray back
tp @s ^ ^ ^-0.2

#hit block api call
function #minecraft:spells_hit_block

#end ray
scoreboard players set #extended_magic.end_ray extended_magic.temp 1

#kill ray
kill @s