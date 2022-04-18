# teleport executor up if it is stuck in a block

#tp up
execute at @s unless block ~ ~ ~ #sourcecraft.2:passable run tp ~ ~.1 ~

#loop
execute at @s unless block ~ ~ ~ #sourcecraft.2:passable run function magicka.2:utility/unstuck