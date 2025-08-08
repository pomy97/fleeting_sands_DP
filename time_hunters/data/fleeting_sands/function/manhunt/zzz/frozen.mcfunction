bossbar set fleeting:manhunt color red
bossbar set fleeting:manhunt name ["",{text:"TRACKING FROZEN! ",color:aqua,bold:true},"Use ",{text:"/trigger compass",color:green}," to get a tracking compass"]
execute store result bossbar fleeting:manhunt value run scoreboard players get %global time.bounty_freezer