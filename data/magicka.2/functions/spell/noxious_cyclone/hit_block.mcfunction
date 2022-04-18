#As/At: Spell that hit something

#sound
playsound minecraft:block.vine.step ambient @a ~ ~ ~ 1 .7

#particles
particle minecraft:cloud ~ ~ ~ .75 .3 .75 0 5 force
particle minecraft:falling_dust minecraft:green_terracotta ~ ~ ~ .75 0 .75 1 10 force

#summon noxious cyclone
function magicka.2:spell/noxious_cyclone/effect/summon_noxious_cyclone