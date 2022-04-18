# runs if this core datapack is the newest version

#cancel command feedback
execute if score #sourcecraft load.status matches 2 run function #sourcecraft:cancel_command_feedback

#run if load status matches this core datapacks version
execute if score #sourcecraft load.status matches 2 unless entity @s[type=#sourcecraft.2:no_health] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function sourcecraft.2:health/apply_health