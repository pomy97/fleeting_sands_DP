advancement revoke @s only time:use_bounty_freezer

execute if score %cooldown time.bounty_freezer matches 1.. run return run function time:bounty_freezer/item/fail

execute unless score %active fleeting.manhunt matches 1 run return fail
scoreboard players set %global time.bounty_freezer 600
scoreboard players set %cooldown time.bounty_freezer 3600
playsound block.glass.break player @a ~ ~ ~ 2 1
execute as @a at @s run playsound entity.wither.spawn player @s ~ ~ ~ 2 1.5
