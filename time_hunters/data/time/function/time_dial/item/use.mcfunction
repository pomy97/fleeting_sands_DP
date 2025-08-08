advancement revoke @s only time:use_time_dial

execute unless score %active fleeting.manhunt matches 1 run return fail
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 2 1

execute if score %cooldown time.dialTime matches 1.. run return run function time:time_dial/item/fail

tag @s add time.this
execute as @e[tag=!time.this] at @s run function time:time_dial/dialation/dialate
tag @s remove time.this