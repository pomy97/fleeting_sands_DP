scoreboard players enable @a compass
scoreboard players enable @a[tag=fleeting.hunted] leave
scoreboard players reset @a[team=!hunted] kit

bossbar set fleeting:manhunt players @a
execute if score %global time.bounty_freezer matches 1.. run function fleeting_sands:manhunt/zzz/frozen
execute unless score %global time.bounty_freezer matches 1.. run function fleeting_sands:manhunt/zzz/unfrozen

execute as @a[scores={compass=1..}] at @s run function fleeting_sands:give_compass
execute as @a[scores={kit=1..}] at @s run function fleeting_sands:kits/get_kits
execute as @a[scores={leave=1..}] at @s run function fleeting_sands:leave_manhunt

execute unless entity @a[team=hunted] run function fleeting_sands:._end_manhunt