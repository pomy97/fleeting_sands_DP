scoreboard players set @s kits.help 0

tellraw @s ["\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n",{"text":"UthiKits","color":"red"},{"text":" Help Menu","color":"white"},\
"\n",{"text":"Q: Why can I not run any commands?","color":"gold"},\
"\n",{"text":"A: Kit commands are only enabled in creative mode. You can access this help menu in any gamemode though!","color":"dark_green"},\
"\n\n",{"text":"[","color":"red","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"}},{"text":"Main Page","color":"gray","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"}},{"text":"]","color":"red","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"}},\
"\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]