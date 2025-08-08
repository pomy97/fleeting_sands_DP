advancement revoke @s only fleeting_sands:kill_runner

execute if entity @s[team=hunted] run return fail

execute if score %manhunt fleeting.manhunt matches 1 run tag @s add fleeting.second_winner
execute unless score %manhunt fleeting.manhunt matches 1 run tag @s add fleeting.first_winner
scoreboard players set %manhunt fleeting.manhunt 1

tellraw @a [{selector:"@s",color:green}," has won the Manhunt!"]
title @a subtitle {color:green,text:"has won the Manhunt!"}
title @a title {selector:"@s",color:green}
execute as @a at @s run playsound ui.toast.challenge_complete ui @s ~ ~ ~

team empty hunted
scoreboard players set %active fleeting.manhunt 0

tag @s add fleeting.hunted
