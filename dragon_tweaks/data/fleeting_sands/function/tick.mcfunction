execute as @e[nbt={Item:{components:{"minecraft:custom_data":{fleeting_sands:{item:'altar_crystal'}}}}}] \
    at @s run function fleeting_sands:item/altar_crystal

execute if score %immortal_egg fleeting.config matches 1 \
    as @e[nbt={Item:{id:"minecraft:dragon_egg"}}] if entity @s[nbt=!{Invulnerable:true}] \
    at @s run function fleeting_sands:item/dragon_egg

schedule function fleeting_sands:tick 1t replace
