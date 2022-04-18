#As/At: Traveling spell

#marker
summon minecraft:marker ~ ~ ~ {Tags:["magicka.particle_marker","global.ignore"]}

#move marker to ground
execute as @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] run function magicka.2:utility/find_block_below

#unstuck marker
execute as @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] run function magicka.2:utility/unstuck

#particles
execute at @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] positioned ~ ~ ~ run particle minecraft:dust 0.933 1.000 0.000 1 ^ ^ ^ 0 0 0 0 0 force
execute at @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] positioned ~ ~0.4 ~ run particle minecraft:dust 0.933 1.000 0.000 1 ^ ^ ^ 0 0 0 0 0 force
execute at @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] positioned ~ ~0.8 ~ run particle minecraft:dust 0.933 1.000 0.000 1 ^ ^ ^ 0 0 0 0 0 force
execute at @e[type=minecraft:marker,tag=magicka.particle_marker,limit=1,sort=nearest] positioned ~ ~1.2 ~ run particle minecraft:dust 0.933 1.000 0.000 1 ^ ^ ^ 0 0 0 0 0 force

#remove temp marker
kill @e[type=minecraft:marker,tag=magicka.particle_marker] 