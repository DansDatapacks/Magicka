# fire projectile spell

#spawn spell ray (item)
execute at @p positioned ^ ^ ^-1.5 run summon minecraft:item ~ ~1.7 ~ {Item:{id:"barrier",Count:1b},PickupDelay:32767,Tags:["bcmpp_spell_ray","bcmpp_entity_ignore","bcmpp_projectile","bcmpp_projectile_init","global.ignore"]}

#set id
data modify entity @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,limit=1,sort=nearest] Tags append from entity @p SelectedItem.tag.bcmpp_meta.id

#set gravity
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{projectile_gravity:"normal"}}}} run tag @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,sort=nearest,limit=1] add math.normal_gravity
execute if data entity @p {SelectedItem:{tag:{bcmpp_meta:{projectile_gravity:"low"}}}} run tag @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,sort=nearest,limit=1] add math.low_gravity

#set range
execute store result score @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,limit=1,sort=nearest] extended_magic.range run data get entity @p SelectedItem.tag.bcmpp_meta.ray_range 5

#rotate spell ray (item) to player
data modify entity @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,sort=nearest,limit=1] Rotation set from entity @p Rotation

#launch spell ray (item)
execute as @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,sort=nearest,limit=1] at @s run function extended_magic.1:math/launch

#remove temp tag
tag @e[type=minecraft:item,tag=bcmpp_spell_ray,tag=bcmpp_projectile_init,sort=nearest,limit=1] remove bcmpp_projectile_init

#kill original spell ray
kill @s