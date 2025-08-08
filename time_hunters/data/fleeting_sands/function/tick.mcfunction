execute if score %active fleeting.manhunt matches 1 run function fleeting_sands:manhunt/tick
execute if score %active fleeting.manhunt matches 2 store result bossbar fleeting:manhunt value run scoreboard players get %countdown fleeting.manhunt
execute if score %active fleeting.manhunt matches 0 run function fleeting_sands:manhunt/disable_bossbar

execute if score %countdown fleeting.manhunt matches 1.. run scoreboard players remove %countdown fleeting.manhunt 1


schedule function fleeting_sands:tick 1t