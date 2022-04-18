#As/At: Player that should update its inventory

summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Tags:["bcmpp_item_frame"],Silent:1b}
data modify entity @e[tag=bcmpp_item_frame,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:11b}]
data modify entity @e[tag=bcmpp_item_frame,limit=1,sort=nearest] Item.id set from entity @s Inventory[{Slot:11b}].tag.bcmpp_meta.item_id
data modify entity @e[tag=bcmpp_item_frame,limit=1,sort=nearest] Item.tag.bcmpp_spell set value 1b
item replace entity @s inventory.2 from entity @e[tag=bcmpp_item_frame,limit=1,sort=nearest] container.0
kill @e[tag=bcmpp_item_frame,limit=1,sort=nearest]
