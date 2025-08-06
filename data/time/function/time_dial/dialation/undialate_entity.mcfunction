tag @s remove time.dialed
execute unless entity @s[tag=time.NoAI] run data merge entity @s {Invulnerable:false}
execute unless entity @s[tag=time.Invulnerable] run data merge entity @s {NoAI:false}
execute unless entity @s[tag=time.NoGravity] run data merge entity @s {NoGravity:false}

tag @s remove time.Invulnerable
tag @s remove time.NoAI
tag @s remove time.NoGravity
