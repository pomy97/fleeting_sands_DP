scoreboard players set @s kits.help 0

tellraw @s ["\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n",{"text":"UthiKits","color":"red"},{"text":" Help Menu","color":"white"},\
"\n",{"text":"Q: How do I store a kit?","color":"gold"},\
"\n",{"text":"A: Simply set up your inventory how you would like and run the following command","color":"dark_green"},\
"\n\n",{"text":"/trigger store_kit","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger store_kit"},"hover_event":{"action":"show_text","value":"Click to get the command!"}},\
"\n\n",{"text":"You will get a kit number. Make sure to write the number down somewhere, as you will need it to retrieve your kit!","color":"dark_green"},\
"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},{"text":"Main Page","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"gray"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},\
"\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]
