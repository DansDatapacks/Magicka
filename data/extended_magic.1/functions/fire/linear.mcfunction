# fire linear spell

#give ray linear tag
tag @s add bcmpp_linear

#set range
execute store result score @s extended_magic.range run data get entity @p SelectedItem.tag.bcmpp_meta.ray_range