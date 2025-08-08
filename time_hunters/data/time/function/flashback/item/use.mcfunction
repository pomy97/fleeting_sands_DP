advancement revoke @s only time:use_flashback
execute unless score %active fleeting.manhunt matches 1 run return fail
tag @s add time.flashback

#get flashback data
data modify storage fleeting_sands:temp new_flashback.x set from entity @s Pos[0]
data modify storage fleeting_sands:temp new_flashback.y set from entity @s Pos[1]
data modify storage fleeting_sands:temp new_flashback.z set from entity @s Pos[2]
data modify storage fleeting_sands:temp new_flashback.rot_1 set from entity @s Rotation[0]
data modify storage fleeting_sands:temp new_flashback.rot_2 set from entity @s Rotation[1]
data modify storage fleeting_sands:temp new_flashback.dimension set from entity @s Dimension
data modify storage fleeting_sands:temp new_flashback.uuid set from entity @s UUID

function time:flashback/item/save_data with storage fleeting_sands:temp new_flashback

# start timer
scoreboard players set @s time.flashback 330

# sfx
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 2 1
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 2 1
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 2

#spawn flashback marker
function time:flashback/item/spawn_flashback with storage fleeting_sands:temp new_flashback