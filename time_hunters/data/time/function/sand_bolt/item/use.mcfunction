advancement revoke @s only time:use_sand_bolt

playsound block.beacon.activate player @a ~ ~ ~
playsound block.beacon.activate player @a ~ ~ ~
playsound block.beacon.activate player @a ~ ~ ~
playsound block.beacon.activate player @a ~ ~ ~
scoreboard players set @s time.sand_bolt 150

attribute @s step_height modifier add fleeting_sands:sand_bolt 2 add_multiplied_total
attribute @s attack_speed modifier add fleeting_sands:sand_bolt 2 add_multiplied_total
attribute @s minecraft:movement_speed modifier add fleeting_sands:sand_bolt 2 add_multiplied_total
attribute @s minecraft:jump_strength modifier add fleeting_sands:sand_bolt 2 add_multiplied_total
attribute @s minecraft:gravity modifier add fleeting_sands:sand_bolt 8 add_multiplied_total