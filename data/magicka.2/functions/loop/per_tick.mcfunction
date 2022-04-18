# runs every tick

#effect cooldowns
scoreboard players remove @e[scores={magicka.burnedT=1..}] magicka.burnedT 1
scoreboard players remove @e[scores={magicka.slowedT=1..}] magicka.slowedT 1
scoreboard players remove @e[scores={magicka.heal_negatedT=1..}] magicka.heal_negatedT 1
scoreboard players remove @e[scores={magicka.stunnedT=1..}] magicka.stunnedT 1

#burned effect
execute as @e[scores={magicka.burned=1..}] unless score @s magicka.burnedT matches 1.. at @s run function magicka.2:spell_effects/burn/handle_burned

#slowed effect
execute as @e[scores={magicka.slowed=1..}] unless score @s magicka.slowedT matches 1.. at @s run function magicka.2:spell_effects/slow/handle_slowed

#heal negated effect
execute as @e[scores={magicka.heal_negated=0..}] unless score @s magicka.heal_negatedT matches 1.. at @s run function magicka.2:spell_effects/heal_negate/handle_heal_negated

#stunned effect
execute as @e[scores={magicka.stunned=1..}] unless score @s magicka.stunnedT matches 1.. at @s run function magicka.2:spell_effects/stun/handle_stunned

#pulling
execute as @e[scores={magicka.pulling=1..}] at @s run function magicka.2:spell_effects/pull/pull

#loop
schedule function magicka.2:loop/per_tick 1t replace