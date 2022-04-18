# run thunderclap

#reset cooldowns
function magicka.2:spell/thunderclap/effect/reset_cooldown

#tp marker
summon minecraft:marker ~ ~ ~ {Tags:["magicka.thunderclap_spell_tp","global.ignore"]}

#move marker to ground
execute as @e[type=minecraft:marker,tag=magicka.thunderclap_spell_tp,limit=1] run function magicka.2:utility/find_block_below

#unstuck marker
execute as @e[type=minecraft:marker,tag=magicka.thunderclap_spell_tp,limit=1] run function magicka.2:utility/unstuck

#tp
execute at @e[type=minecraft:marker,tag=magicka.thunderclap_spell_tp,limit=1] rotated as @s run tp ~ ~ ~

#kill marker
kill @e[type=minecraft:marker,tag=magicka.thunderclap_spell_tp,limit=1]

#reset tags
tag @s remove magicka.executed_spell