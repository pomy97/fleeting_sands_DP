kill @n[type=item,nbt={Item:{id:"minecraft:sugar",count:1}},distance=..1]
loot spawn ~ ~ ~ loot time:sand_bolt

particle minecraft:dust{scale:1,color:15654570} ~ ~.5 ~ .1 .1 .1 0 10 force
playsound block.crafter.craft block @a ~ ~ ~ 1
playsound block.smithing_table.use block @a ~ ~ ~ 1
playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1

kill @s