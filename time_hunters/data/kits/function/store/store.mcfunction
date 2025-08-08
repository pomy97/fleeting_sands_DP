#Store data
$data modify storage kits:kits kits.$(kits).1 set from entity @e[distance=...001,tag=kit.chest_1,type=chest_minecart,limit=1] Items
$data modify storage kits:kits kits.$(kits).2 set from entity @e[distance=...001,tag=kit.chest_2,type=chest_minecart,limit=1] Items

#remove temp storage
tp @e[distance=...001,tag=kit.chest_1,type=chest_minecart] 0 -97 0
tp @e[distance=...001,tag=kit.chest_2,type=chest_minecart] 0 -97 0

#message
$tellraw @s ["\n",\
{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n\n",{"text":"Successfully stored kit as ","color":"green"},{"text":"Kit $(kits)","color":"white"},\
"\n",{"text":"Run the following command to retrieve your kit!","color":"gray"},\
"\n\n",{"text":"/trigger get_kit set $(kits)","clickEvent":{"action":"suggest_command","value":"/trigger get_kit set $(kits)"},"hoverEvent":{"action":"show_text","contents":"Click to get the command!"},"color":"aqua"},\
"\n\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]