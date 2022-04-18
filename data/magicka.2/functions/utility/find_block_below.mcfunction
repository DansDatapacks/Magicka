# teleport executor down until it hits a block

#tp down
execute at @s if block ~ ~-.1 ~ #sourcecraft.2:passable run tp ~ ~-.1 ~

#loop
execute at @s if block ~ ~-.1 ~ #sourcecraft.2:passable run function magicka.2:utility/find_block_below