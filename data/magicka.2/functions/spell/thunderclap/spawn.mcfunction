#As/At: Spell

#sound
playsound minecraft:entity.firework_rocket.blast ambient @a ~ ~ ~ 2 1.8

#get selected hotbar slot
tag @p add magicka.executed_spell
execute store result score #selecteditemslot sourcecraft.temp run data get entity @p[tag=magicka.executed_spell] SelectedItemSlot