# verifies that this is the latest version of the core datapack and runs load if so

#run if load status matches this datapack's version
execute if score #extended_magic load.status matches 1 run function extended_magic.1:on_event/on_load