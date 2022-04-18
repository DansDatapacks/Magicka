# summon lightning bolt

#summon lightning bolt
summon minecraft:marker ~ ~ ~ {Tags:["magicka.lightning_bolt_spell","magicka.lightning_bolt_spell_init","global.ignore"]}

#give lightning bolt an ID
execute as @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell_init,limit=1] run function #sourcecraft:give_id

#if stuck in a block, tp it up
execute as @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell_init,limit=1] at @s unless block ~ ~ ~ #sourcecraft.2:passable run function magicka.2:utility/unstuck

#tp lightning bolt marker down until it finds a block
execute as @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell_init,limit=1] run function magicka.2:utility/find_block_below

#remove tag
tag @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell_init,limit=1] remove magicka.lightning_bolt_spell_init

#begin lightning bolt handle
schedule function magicka.2:spell/lightning_bolt/effect/handle_lightning_bolt 1t replace