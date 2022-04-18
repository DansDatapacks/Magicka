# determines if the hit entity will be slowed

#generate random number
function #sourcecraft:generate_random_number

#defaults
execute unless score #effect_chance sourcecraft.temp matches 1.. run scoreboard players set #effect_chance sourcecraft.temp 100
execute unless score #effect_time sourcecraft.temp matches 1.. run scoreboard players set #effect_time sourcecraft.temp 1

#alert
execute if score #RNG sourcecraft.num <= #effect_chance sourcecraft.temp unless score @s magicka.slowed >= #effect_time sourcecraft.temp run tellraw @s [{"text":"You have been ","color":"dark_gray"},{"text":"slowed","color":"aqua"},{"text":". (","color":"dark_gray"},{"score":{"name":"#effect_time","objective":"sourcecraft.temp"},"color":"gray"},{"text":"s","color":"gray"},{"text":")","color":"dark_gray"}]

#if number is less than or equal to stun chance, slow the target
execute if score #RNG sourcecraft.num <= #effect_chance sourcecraft.temp unless score @s magicka.slowed >= #effect_time sourcecraft.temp run scoreboard players operation @s magicka.slowed = #effect_time sourcecraft.temp

#reset
scoreboard players reset #effect_chance sourcecraft.temp
scoreboard players reset #effect_time sourcecraft.temp