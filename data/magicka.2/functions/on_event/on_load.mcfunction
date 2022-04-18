# runs on reload

#variables
scoreboard objectives add magicka.queued dummy
scoreboard objectives add magicka.time dummy

#effects
scoreboard objectives add magicka.burned dummy
scoreboard objectives add magicka.burnedT dummy
scoreboard objectives add magicka.slowed dummy
scoreboard objectives add magicka.slowedT dummy
scoreboard objectives add magicka.stunned dummy
scoreboard objectives add magicka.stunnedT dummy
scoreboard objectives add magicka.heal_negated dummy
scoreboard objectives add magicka.heal_negatedT dummy
scoreboard objectives add magicka.health_lock dummy

#spell effects
scoreboard objectives add magicka.pulling dummy
scoreboard objectives add magicka.pull_speed dummy

#constants
scoreboard players set #20 sourcecraft.data 20

#loops
function magicka.2:loop/per_tick