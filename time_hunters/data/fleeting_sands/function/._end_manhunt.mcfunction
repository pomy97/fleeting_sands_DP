tag @a remove fleeting.hunted
team empty hunted
scoreboard players set %active fleeting.manhunt 0

tellraw @a {color:gray,text:"The Manhunt has ended"}
title @a subtitle {color:gray,text:"The Manhunt has ended"}
title @a title ""
clear @a *[minecraft:custom_data~{fleeting_sands:{manhunt_item:true}}]