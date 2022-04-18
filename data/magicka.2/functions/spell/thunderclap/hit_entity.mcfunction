#As/At: Spell that hit something

#run on all pierced entities
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#sourcecraft.2:no_health,tag=!global.ignore] run function magicka.2:spell/thunderclap/effect/run_pierce