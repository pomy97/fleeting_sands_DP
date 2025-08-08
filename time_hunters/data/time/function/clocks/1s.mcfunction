execute if score %active fleeting.manhunt matches 1 as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fleeting_sands: {item: "sands_of_time"}}}}}] \
    at @s \
    run function time:craft/tick

schedule function time:clocks/1s 1s