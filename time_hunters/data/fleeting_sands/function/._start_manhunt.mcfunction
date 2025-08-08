schedule function fleeting_sands:manhunt/start 120s replace
scoreboard players set %countdown fleeting.manhunt 2400
scoreboard players set %active fleeting.manhunt 2

bossbar set fleeting:manhunt visible true
bossbar set fleeting:manhunt color yellow
bossbar set fleeting:manhunt name "Manhunt starting soon..."

bossbar set fleeting:manhunt max 2400
tellraw @a[tag=fleeting.hunted] [{color:"gray",text:"Manhunt starting in 2 minutes!\nStash anything important in your ender chest.\nWhen the manhunt starts, you can run "},{color:"white",text:"/trigger kit"}," to get the kit with the needed items.\nGetting the kit ",{text:"WILL",bold:true,color:red}," clear your inventory."]

give @a[tag=fleeting.hunted] ender_chest