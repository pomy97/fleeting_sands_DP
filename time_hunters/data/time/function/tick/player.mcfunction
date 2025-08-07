execute if score @s time.flashback matches 0 run function time:flashback/get_player with entity @s
execute if score @s time.flashback matches 1.. run scoreboard players remove @s time.flashback 1
execute if score @s time.flashback matches 30 run function time:flashback/pre_return_sfx
execute if score @s time.flashback matches ..30 run particle minecraft:dust{scale:1,color:15654570} ~ ~1 ~ .3 .3 .3 0 10 force
#particle minecraft:dust{scale:1,color:15654570} ~ ~1 ~ .3 .3 .3 0 10 force