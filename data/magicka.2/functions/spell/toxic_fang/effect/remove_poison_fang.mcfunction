# removed poison fang from existance

#get current gametime
execute store result score #current_gametime sourcecraft.temp run time query gametime

#find poison fang and remove it
execute as @e[type=minecraft:evoker_fangs,tag=magicka.poison_fang] if score @s magicka.queued = #current_gametime sourcecraft.temp run function #sourcecraft:remove_entity