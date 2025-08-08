#get selection value
execute store result storage kits:values selection int 1 run scoreboard players get @s get_kit
scoreboard players set @s get_kit 0

#command
execute at @s run function kits:get/get with storage kits:values