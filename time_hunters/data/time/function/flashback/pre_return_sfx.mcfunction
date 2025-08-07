tag @s add time.this
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 0
playsound entity.warden.sonic_charge player @a[tag=!time.this] ~ ~ ~ 2 1
tag @s remove time.this
playsound entity.warden.sonic_charge player @s ~ ~ ~ 2000 1