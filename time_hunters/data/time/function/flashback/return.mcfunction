$execute in $(dimension) run tp @s $(x) $(y) $(z) $(rot_1) $(rot_2)
$kill @e[type=item_display,nbt={item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:$(uuid)}}}},tag=time.fb]
$kill @e[type=interaction,nbt={data:{id:$(uuid)}},tag=time.fb]
scoreboard players reset @s time.flashback

tag @s remove time.flashback

#sfx
#playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1
#playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 2 0