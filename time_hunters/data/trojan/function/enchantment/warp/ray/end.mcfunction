# from ../cast

#teleport
tp @a[tag=uthi.shotSource,limit=1] ^ ^ ^-.5

particle dust{color:3729663,scale:1} ~ ~1 ~ .5 1 .5 .1 50 force
particle smoke ~ ~1 ~ .5 1 .5 .1 50 force
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 2
playsound block.sculk.spread player @a ~ ~ ~ 2
playsound block.sculk.break player @a ~ ~ ~ 2
playsound block.sculk.break player @a ~ ~ ~ 2
playsound block.sculk.break player @a ~ ~ ~ 2
playsound block.sculk.break player @a ~ ~ ~ 2