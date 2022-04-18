#As/At: Spell that hit something

#sound
playsound minecraft:entity.magma_cube.hurt ambient @a ~ ~ ~ 4 .2

#particles
particle minecraft:lava ~ ~ ~ .5 1 .5 0 10 force
particle minecraft:smoke ~ ~ ~ 1 1.5 1 0 30 force

#summon meteor
function magicka.2:spell/meteor/effect/summon_meteor_cloud