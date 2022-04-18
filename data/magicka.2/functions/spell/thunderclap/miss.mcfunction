#As/At: Spell that missed

#sound
playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 1 1.8

#run thunderclap
execute positioned ~ ~ ~ as @a[tag=magicka.executed_spell,limit=1] run function magicka.2:spell/thunderclap/effect/run_thunderclap