tag @s add time.dialed
execute if entity @s[nbt={NoAI:true}] run tag @s add time.Invulnerable
execute if entity @s[nbt={Invulnerable:true}] run tag @s add time.NoAI
execute if entity @s[nbt={NoGravity:true}] run tag @s add time.NoGravity

data merge entity @s {NoAI:true,Invulnerable:true,NoGravity:true}