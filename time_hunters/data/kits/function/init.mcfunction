# --------------------
# This was created by UthiAnimates!
# DO NOT DISTRIBUTE WITHOUT EXPLICIT PERMISSION!
# --------------------

#universal scoreboards
scoreboard objectives add uthipacks.installed dummy
scoreboard players set #UthiKits uthipacks.installed 1

#general scoreboards
scoreboard objectives add kits.combat dummy
scoreboard objectives add kits.temp dummy
scoreboard objectives add kits.selection dummy

#mathematics
scoreboard objectives add kits.mafs dummy
scoreboard players set #1 kits.mafs 1
scoreboard players set #2 kits.mafs 2
scoreboard players set #3 kits.mafs 3
scoreboard players set #4 kits.mafs 4

#commands
scoreboard objectives remove store_kit
scoreboard objectives remove get_kit
scoreboard objectives remove kits.help

scoreboard objectives add get_kit trigger
scoreboard objectives add store_kit trigger
scoreboard objectives add kits.help trigger

scoreboard players reset * get_kit
scoreboard players reset * store_kit

#data modify storage kits:kits 1 set value {1:{},2:{}}
execute unless data storage kits:values kits run data modify storage kits:values kits set value 0

schedule function kits:tick 1t replace
