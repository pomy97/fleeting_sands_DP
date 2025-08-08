scoreboard players set @s kits.help 0

tellraw @s ["\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n",{"text":"UthiKits","color":"red"},{"text":" Help Menu","color":"white"},\
"\n",{"text":"Q: How do I run custom commands?","color":"gold"},\
"\n",{"text":"A: Due to datapack limitations, there are no custom 'commands'. Instead, we use the /trigger command followed by the command you want to run.\nHere is a full list of the commands:","color":"dark_green"},\
"\n",{"text":"/trigger get_kit set <Kit Number>","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger get_kit set "},"hover_event":{"action":"show_text","value":"Click to get the command!"}},{"text":" - Retrieves a kit","color":"dark_green"},\
"\n",{"text":"/trigger store_kit","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger store_kit"},"hover_event":{"action":"show_text","value":"Click to get the command!"}},{"text":" - Stores a kit","color":"dark_green"},\
"\n",{"text":"/trigger kits.help","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger kits.help"},"hover_event":{"action":"show_text","value":"Click to get the command!"}},{"text":" - Opens the Help Menu","color":"dark_green"},\
"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},{"text":"Main Page","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"gray"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set 1"},"hover_event":{"action":"show_text","value":"Click to go back to the main page"},"color":"red"},\
 "\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]