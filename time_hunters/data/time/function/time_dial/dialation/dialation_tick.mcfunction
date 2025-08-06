scoreboard players remove %global time.dialTime 1
execute as @a[tag=time.dialed,predicate=time:is_not_riding_lock] run function time:time_dial/dialation/relock_entity with entity @s

title @a actionbar {text:"Time Dialated",color:"red"}