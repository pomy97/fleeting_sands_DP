execute as @a[tag=fleeting.hunted] run team join hunted @s
scoreboard players set %active fleeting.manhunt 1

tellraw @a {text:"The Manhunt has Started",color:green}
tellraw @a[tag=fleeting.hunted] [{text:"Run ",color:red},{text:"/trigger leave",color:gray}," to leave the manhunt"]
title @a subtitle {color:green,text:"The Manhunt has Started"}
title @a title {text:"GO GO GO!",color:green}
execute as @a at @s run playsound entity.ender_dragon.growl ui @s ~ ~ ~ 10 1

gamerule keepInventory true