team add hunted "Hunted"
team modify hunted color red
team modify hunted seeFriendlyInvisibles true
team modify hunted friendlyFire true

scoreboard objectives add fleeting.manhunt dummy
scoreboard objectives add compass trigger
scoreboard objectives add leave trigger


bossbar add fleeting:manhunt [{text:"Use ",color:white},{text:"/trigger compass",color:green},{text:" to get a tracking compass"}]
bossbar set fleeting:manhunt color green
bossbar set fleeting:manhunt max 600
bossbar set fleeting:manhunt value 600

schedule function fleeting_sands:tick 1t replace

function fleeting_sands:kits/store_kits

tellraw @a ["",{color:"yellow",text:"Fleeting Sands Datapack"},{color:"red",text:" "},{color:"green",text:"successfully loaded!"},"\n",{color:"gray",text:"Created by pomy97"},"\n",{color:"green",text:"Support the creator!"},"\n  [",{color:"red",text:"Main Channel",click_event:{action:"open_url",url:"https://www.youtube.com/@pomy97?sub_confirmation=1"},hover_event:{action:"show_text",value:["",{text:"Click to go to pomy97's Main Youtube Channel!"}]}},"]\n  [",{color:"red",text:"Second Channel",click_event:{action:"open_url",url:"https://www.youtube.com/@pomy96?sub_confirmation=1"},hover_event:{action:"show_text",value:["",{text:"Click to go to pomy97's Second Youtube Channel!"}]}},"]\n  [",{color:"aqua",text:"Bluesky",click_event:{action:"open_url",url:"https://bsky.app/profile/pomy97.bsky.social"},hover_event:{action:"show_text",value:["",{text:"Click to go to pomy97's Bluesky page!"}]}},"]\nPlaytesters:\n",{color:"gray",text:"  EmpyrianElite"},"\n",{color:"gray",text:"  PotatoKing5185"},"\n",{color:"gray",text:"thanks guys <3"}]