scoreboard players set @s kits.help 0

tellraw @s ["\n",\
{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"},\
"\n",{"text":"UthiKits","color":"red"},{"text":" Help Menu","color":"white"},\
"\n",{"text":"This is more a QnA, so click the question you want answers to.","color":"gray"},\
"\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set -1"},"color":"gray"},{"text":"How do I store a kit?","click_event":{"action":"run_command","command":"/trigger kits.help set -1"},"color":"gold"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set -1"},"color":"gray"},\
"\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set -2"},"color":"gray"},{"text":"How do I get a kit?","click_event":{"action":"run_command","command":"/trigger kits.help set -2"},"color":"gold"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set -2"},"color":"gray"},\
"\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set -3"},"color":"gray"},{"text":"How do I run custom commands?","click_event":{"action":"run_command","command":"/trigger kits.help set -3"},"color":"gold"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set -3"},"color":"gray"},\
"\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger kits.help set -4"},"color":"gray"},{"text":"Why can I not run any commands?","click_event":{"action":"run_command","command":"/trigger kits.help set -4"},"color":"gold"},{"text":"]","click_event":{"action":"run_command","command":"/trigger kits.help set -4"},"color":"gray"},\
"\n",{"text":"- - - - - - - - - - - - - - - - - - - -","color":"gray"}]