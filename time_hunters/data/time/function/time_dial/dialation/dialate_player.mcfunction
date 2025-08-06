tag @s add time.dialed

#debug
attribute @s attack_speed modifier add fleeting_sands:time_dial -100 add_value
attribute @s entity_interaction_range modifier add fleeting_sands:time_dial -100 add_value
attribute @s block_break_speed modifier add fleeting_sands:time_dial -100 add_value
attribute @s burning_time modifier add fleeting_sands:time_dial -1 add_value
attribute @s explosion_knockback_resistance modifier add fleeting_sands:time_dial 100 add_value
attribute @s gravity modifier add fleeting_sands:time_dial -1 add_multiplied_total
attribute @s jump_strength modifier add fleeting_sands:time_dial -100 add_value
attribute @s movement_speed modifier add fleeting_sands:time_dial -100 add_value
attribute @s knockback_resistance modifier add fleeting_sands:time_dial 100 add_value
attribute @s minecraft:oxygen_bonus modifier add fleeting_sands:time_dial 100 add_value
attribute @s mining_efficiency modifier add fleeting_sands:time_dial -100 add_value
attribute @s submerged_mining_speed modifier add fleeting_sands:time_dial -100 add_value

summon item_display ~ ~ ~ {\
    data:{\
        fleeting_sands:{\
            stasis:false,\
            locked_uuid:[]\
        }\
    },\
    Tags:["stasis.new_lock","stasis.lock","time.lock"]\
}
data modify entity @n[tag=stasis.new_lock] data.fleeting_sands.locked_uuid set from entity @s UUID
ride @s mount @n[tag=stasis.new_lock]
tag @n[tag=stasis.new_lock] remove stasis.new_lock