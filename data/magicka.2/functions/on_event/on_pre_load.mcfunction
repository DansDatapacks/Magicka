# set latest version of this datapack

#set pack load status
execute unless score #magicka load.status matches 2.. run scoreboard players set #magicka load.status 2

#enable modules of sourcecraft
scoreboard players set #sourcecraft.module.player_ID sourcecraft.data 1
scoreboard players set #sourcecraft.module.player_death_detect sourcecraft.data 1