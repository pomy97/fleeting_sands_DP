execute as @s[nbt={Item:{count:16}}] if entity @n[type=item,nbt={Item:{id:"minecraft:clock",count:1}}, nbt=!{Item:{components:{}}}, distance=..1] run function time:craft/time_dial

execute as @s[nbt={Item:{count:8}}] if entity @n[type=item,nbt={Item:{id:"minecraft:compass",count:1}}, nbt=!{Item:{components:{}}}, distance=..1] run function time:craft/bounty_freezer

execute as @s[nbt={Item:{count:4}}] if entity @n[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}},distance=..1] run function time:craft/flashback

execute as @s[nbt={Item:{count:1}}] if entity @n[type=item,nbt={Item:{id:"minecraft:sugar",count:1}},distance=..1] run function time:craft/sand_bolt