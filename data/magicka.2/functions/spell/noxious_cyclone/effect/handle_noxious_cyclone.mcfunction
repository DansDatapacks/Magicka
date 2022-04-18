# handle noxious cyclone

#run cyclones
execute as @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell] at @s run function magicka.2:spell/noxious_cyclone/effect/run_noxious_cyclone

#loop if there are any active noxious cyclones
execute if entity @e[type=minecraft:marker,tag=magicka.noxious_cyclone_spell] run schedule function magicka.2:spell/noxious_cyclone/effect/handle_noxious_cyclone 1t replace