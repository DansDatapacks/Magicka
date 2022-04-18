#As/At: Server - Fired upon reload

# Duplicate the lines below for each spell you create. Remove the # in front and fill in the #####

#data modify storage bertiecrafter:mpp SpellsMeta append value {}
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "#####"
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"#####","color":"green"}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By #####","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "#####"
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "#####"
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value #####
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"#####","color":"gray","italic":false}'

# Id			Globally unique id, generate using https://www.uuidgenerator.net/
# Title			A describing name of your spell. Used as name of the spell item.
#					Color should be one of:
#					black, dark_blue, dark_green, dark_aqua, dark_red, dark_purple, gold, gray, dark_gray, blue, green, aqua, red, light_purple, yellow, white
# Author		Your in-game name for credit. Should remain gray.
# Phrase		A magically sounding phrase that the player will say in chat when your spell is used. Allows the opponent to anticipate the spell.
# SpellColor	Color of spell item
#					Should be one of:
#					white, oRayRange, magenta, light_blue, yellow, lime, pink, light_gray, cyan, purple, blue, brown, green, red, black
# Timeout		The delay before the spell can be used again in ticks (20 ticks = 1 second)
# Description	A description for the spell. Repeat this command for each line, should remain gray.

# Your spells:

#fireball
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.fireball"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Fireball","color":"red","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Fireball!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "red"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415000
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 20
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Damages hit enemy target with","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"fire damage.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🔥 Burn Infict: 1s (5% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 3","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 1s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "fire"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"

#snowball
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.snowball"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Snowball","color":"aqua","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Snowball!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "light_blue"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415005
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 20
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Damages hit enemy target with","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"ice damage.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"❄ Slow Infict: 1s (5% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 3","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 1s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "ice"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"

#toxic fang
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.toxic_fang"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Toxic Fang","color":"dark_green","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Toxic Fang!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "green"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415010
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 20
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Damages hit enemy target with","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"toxic damage.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"☠ Heal Negate: 1s (5% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 3","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 1s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "toxic"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"

#zap
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.zap"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Zap","color":"yellow","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Zap!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "yellow"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415015
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 20
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Damages hit enemy target with","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"electric damage.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⚡ Stun Infict: 1s (5% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 3","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 1s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "electric"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 200

# #smoldering rune
# data modify storage bertiecrafter:mpp SpellsMeta append value {}
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.smoldering_rune"
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Smoldering Rune","color":"red","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Smoldering Rune!"
# data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "red"
# data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415090
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 1200
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Places a rune that constantly","color":"gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"ignites enemy targets within","color":"gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"range.","color":"gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🔥 Burn Infict: 1s","color":"gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 60s","color":"gray","italic":false}'
# data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "fire"
# data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"
# data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 100

#noxious cyclone
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.noxious_cyclone"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Noxious Cyclone","color":"dark_green","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Noxious Cyclone!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "green"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415115
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 300
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Summons a cyclone that pulls any","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"enemies within range towards it","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"for a short time. Enemies within","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"the cyclone slowly take toxic","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"damage.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"☠ Heal Negate: 1s (20% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 3/s","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 15s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "toxic"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 100

#magnetic pull
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.magnetic_pull"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Magnetic Pull","color":"yellow","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Magnetic Pull!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "yellow"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415130
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 200
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 200
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Pulls hit target towards the","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"user. If the hit location is","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"a block, it pulls the user","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"towards it.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 10s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "electric"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 100

#thunderclap
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.thunderclap"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Thunderclap","color":"yellow","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Thunderclap!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "yellow"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415135
#data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 900
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 900
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Teleports the user to the target","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"location, dealing electric damage","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"to pierced enemy targets and","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"resets cooldowns on the user\'s","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"other spells.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⚡ Stun Infict: 2s (35% Chance)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 5","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 45s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "electric"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "hitscan"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 50
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayPiercing set value true

#meteor
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.meteor"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Meteor","color":"red","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Meteor!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "red"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415150
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 600
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Summons a meteor that lands on","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"the executed area dealing fire","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"damage to enemy targets within","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"range. Hit targets are ignited.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🔥 Burn Infict: 3s","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 10","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 30s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "fire"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayType set value "projectile"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 320

#lightning bolt
data modify storage bertiecrafter:mpp SpellsMeta append value {}
data modify storage bertiecrafter:mpp SpellsMeta[-1].Id set value "magicka.lightning_bolt"
data modify storage bertiecrafter:mpp SpellsMeta[-1].Title set value '{"text":"Lightning Bolt","color":"yellow","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Author set value '{"text":"By DanMizu","color":"dark_gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Phrase set value "Lightning Bolt!"
data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellColor set value "yellow"
data modify storage bertiecrafter:mpp SpellsMeta[-1].CustomModelData set value 415195
data modify storage bertiecrafter:mpp SpellsMeta[-1].Timeout set value 600
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"Summons a lightning bolt that","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"lands on the executed area","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"dealing electric damage to","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"enemy targets within range","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"twice. On first hit, targets","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"are stunned.","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":""}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⚡ Stun Infict: 3s","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"🗡 Damage: 5 (2x)","color":"gray","italic":false}'
data modify storage bertiecrafter:mpp SpellsMeta[-1].Description append value '{"text":"⟳ Cooldown: 30s","color":"gray","italic":false}'
#data modify storage bertiecrafter:mpp SpellsMeta[-1].SpellElement set value "electric"
data modify storage bertiecrafter:mpp SpellsMeta[-1].RayRange set value 200