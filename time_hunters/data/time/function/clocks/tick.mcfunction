execute if score %global time.dialTime matches 25 run function time:time_dial/dialation/effects/undialate/1
execute if score %global time.dialTime matches ..0 as @e[tag=time.dialed] run function time:time_dial/dialation/undialate
execute if score %global time.dialTime matches 1.. run function time:time_dial/dialation/dialation_tick
execute if score %cooldown time.dialTime matches 1.. run scoreboard players remove %cooldown time.dialTime 1

execute as @a at @s run function time:tick/player
execute as @e[tag=time.fb_hitbox] at @s run function time:flashback/flashback_tick
schedule function time:clocks/tick 1t