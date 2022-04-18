# fire hitscan spell

#give temp executor tag
tag @p add extended_magic.spell_executor

#give ray hitscan tag
tag @s add bcmpp_hitscan

#set as piercing
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{ray_piercing:1b}}}} run tag @s add extended_magic.piercing

#set range
execute store result score @s extended_magic.range run data get entity @p SelectedItem.tag.bcmpp_meta.ray_range