# verifies that this is the latest version of the core datapack and runs load if so

#run if load status matches this datapack's version
execute if score #magicka load.status matches 2 run function magicka.2:on_event/on_load