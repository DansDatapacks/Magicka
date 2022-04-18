#As/At: Spell that hit something

#sound
playsound minecraft:block.vine.step ambient @a ~ ~ ~ 1 .7

#particles
particle minecraft:smoke ~ ~ ~ .75 .3 .75 0 65 force
particle minecraft:falling_dust minecraft:green_terracotta ~ ~ ~ .75 0 .75 1 25 force

#poison fang
function magicka.2:spell/toxic_fang/effect/summon_poison_fang