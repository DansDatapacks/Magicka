#As/At: Spell that hit an entity

#hit entity api call
function #minecraft:spells_hit_entity

#mark entities as pierced
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!#bertiecrafter:mpp/spell_ignored,dx=0,dy=0,dz=0,tag=!extended_magic.pierced_entity,tag=!extended_magic.spell_executor] add extended_magic.pierced_entity