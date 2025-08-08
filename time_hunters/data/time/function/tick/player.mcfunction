# flashback
execute if score @s time.flashback matches 0 run function time:flashback/get_player with entity @s
execute if score @s time.flashback matches 31.. \
    if predicate {\
        condition:"entity_properties",\
        entity:this,\
        predicate:{\
            type_specific:{\
                type:"player",\
                input:{sneak:true}\
            }\
        }\
    } run scoreboard players set @s time.flashback 30

execute if score @s time.flashback matches 30 run function time:flashback/pre_return_sfx
execute if score @s time.flashback matches ..30 run particle minecraft:dust{scale:1,color:15654570} ~ ~1 ~ .3 .3 .3 0 10 force

execute if score @s time.sand_bolt matches 0 run function time:sand_bolt/disable with entity @s
