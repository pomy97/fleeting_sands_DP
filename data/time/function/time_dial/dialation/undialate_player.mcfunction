execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 1.5
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 1

tag @s remove time.dialed
attribute @s minecraft:attack_speed modifier remove fleeting_sands:time_dial
attribute @s entity_interaction_range modifier remove fleeting_sands:time_dial

attribute @s minecraft:block_break_speed modifier remove fleeting_sands:time_dial
attribute @s minecraft:burning_time modifier remove fleeting_sands:time_dial
attribute @s minecraft:explosion_knockback_resistance modifier remove fleeting_sands:time_dial
attribute @s minecraft:gravity modifier remove fleeting_sands:time_dial
attribute @s minecraft:jump_strength modifier remove fleeting_sands:time_dial
attribute @s minecraft:movement_speed modifier remove fleeting_sands:time_dial
attribute @s minecraft:sneaking_speed modifier remove fleeting_sands:time_dial
attribute @s minecraft:knockback_resistance modifier remove fleeting_sands:time_dial
attribute @s minecraft:oxygen_bonus modifier remove fleeting_sands:time_dial
attribute @s minecraft:mining_efficiency modifier remove fleeting_sands:time_dial
attribute @s minecraft:submerged_mining_speed modifier remove fleeting_sands:time_dial
attribute @s minecraft:water_movement_efficiency modifier remove fleeting_sands:time_dial
attribute @s minecraft:movement_efficiency modifier remove fleeting_sands:time_dial

$kill @e[nbt={data:{fleeting_sands:{locked_uuid:$(UUID)}}}]