execute if score %active fleeting.manhunt matches 1 run function fleeting_sands:manhunt/tick
execute unless score %active fleeting.manhunt matches 1 run function fleeting_sands:manhunt/disable_bossbar

schedule function fleeting_sands:tick 1t