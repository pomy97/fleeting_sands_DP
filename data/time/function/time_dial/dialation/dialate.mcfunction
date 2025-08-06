schedule function time:time_dial/dialation/effects/dialate/1 1t replace
scoreboard players set %global time.dialTime 200
scoreboard players set %cooldown time.dialTime 6000

execute if entity @s[type=player] run function time:time_dial/dialation/dialate_player
execute if entity @s[type=#uthi:mobs_no_player] run function time:time_dial/dialation/dialate_entity

give @s minecraft:diamond_helmet[equippable={asset_id:"leather",slot:head,equip_sound:"minecraft:item.armor.equip_diamond"},dyed_color=15274304]
give @s minecraft:diamond_helmet[equippable={asset_id:"leather",slot:head,equip_sound:"minecraft:item.armor.equip_diamond"},dyed_color=4507434]