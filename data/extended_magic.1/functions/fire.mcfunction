# add to fire spell function

#give ray global.ignore tag
tag @s add global.ignore

#linear spells
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{ray_type:"linear"}}}} at @s run function extended_magic.1:fire/linear

#projectile spells
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{ray_type:"projectile"}}}} at @s run function extended_magic.1:fire/projectile

#hitscan spells
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{ray_type:"hitscan"}}}} at @s run function extended_magic.1:fire/hitscan

#set spell element
#execute if data entity @p SelectedItem.tag.bcmpp_meta.element run data modify entity @e[tag=bcmpp_spell_ray,limit=1,sort=nearest] Tags append from entity @s SelectedItem.tag.bcmpp_meta.spell_element

#set spell team
#execute if data entity @p Team run data modify entity @e[tag=bcmpp_spell_ray,limit=1,sort=nearest] Tags append from entity @s Team