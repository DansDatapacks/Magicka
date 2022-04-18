# lowers players health to be at the same level of their health lock

#get current health difference to health lock
execute store result score #apply_health sourcecraft.temp run scoreboard players operation #current_health sourcecraft.temp -= @s magicka.health_lock
scoreboard players operation #apply_health sourcecraft.temp *= #-1 sourcecraft.data

#mute hurt sound
scoreboard players set #sourcecraft.api.apply_health.mute_hurt_sound sourcecraft.temp 1

#lower health back down to lock
function #sourcecraft:apply_health

#get current health
execute store result score #current_health sourcecraft.temp run attribute @s minecraft:generic.max_health get