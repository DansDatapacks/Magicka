# end hitscan ray

#remove pierced entity
tag @e[tag=extended_magic.pierced_entity] remove extended_magic.pierced_entity

#reset executor
tag @a[tag=extended_magic.spell_executor] remove extended_magic.spell_executor

#reset temp score
scoreboard players reset #extended_magic.end_ray extended_magic.temp