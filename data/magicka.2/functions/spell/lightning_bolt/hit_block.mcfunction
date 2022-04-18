#As/At: Spell that hit something

#sound
playsound minecraft:entity.firework_rocket.twinkle_far ambient @a ~ ~ ~ 1 0.8

#particles
particle minecraft:electric_spark ~ ~ ~ .4 .4 .4 0 30 force
particle minecraft:flash ~ ~ ~ .4 .4 .4 0 1 force

#summon meteor
function magicka.2:spell/lightning_bolt/effect/summon_lightning_bolt