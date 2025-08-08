scoreboard players set @s kits.help 0

tellraw @s ["\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n",{"text":"UthiKits","color":"red"},{"text":" Help Menu","color":"white"},\
"\n",{"text":"Q: How do I get a kit?","color":"gold"},\
"\n",{"text":"A: Run this command with the number of the kit!","color":"dark_green"},\
"\n\n",{"text":"/trigger get_kit set <Kit Number>","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger get_kit set "},"hover_event":{"action":"show_text","value":"Click to get the command!"}},\
"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},{"text":"Main Page","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"gray"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},\
"\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]