# intercept travel spell function

#linear ray travel
execute if entity @s[tag=bcmpp_linear] run function extended_magic.1:travel/linear

#projectile ray travel
execute if entity @s[tag=bcmpp_projectile] run function extended_magic.1:travel/projectile

#hitscan ray travel
execute if entity @s[tag=bcmpp_hitscan] run function extended_magic.1:travel/hitscan