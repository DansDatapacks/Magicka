# handle lightning bolt

#landing zone indication
execute at @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell] run function magicka.2:spell/lightning_bolt/effect/landing_zone

#summon lightning bolt
execute as @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell] if score @s magicka.time matches 20 at @s run summon lightning_bolt ~ ~ ~

#lightning hits ground
execute as @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell] if score @s magicka.time matches 20 at @s run function magicka.2:spell/lightning_bolt/effect/lightning_bolt_land

#increase time
scoreboard players add @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell] magicka.time 1

#loop if there are any active lightning bolts
execute if entity @e[type=minecraft:marker,tag=magicka.lightning_bolt_spell] run schedule function magicka.2:spell/lightning_bolt/effect/handle_lightning_bolt 1t replace