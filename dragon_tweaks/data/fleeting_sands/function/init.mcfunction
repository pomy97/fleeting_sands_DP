scoreboard objectives add fleeting.config dummy
scoreboard players set %respawn_crystals fleeting.config 1
scoreboard players set %immortal_egg fleeting.config 1

team add technical_team_do_not_join "YOU HAD ONE JOB SKULL"
team modify technical_team_do_not_join color light_purple

schedule function fleeting_sands:tick 1t replace