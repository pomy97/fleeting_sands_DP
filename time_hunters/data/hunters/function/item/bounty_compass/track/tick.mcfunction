# from enchantment:bounty_compass
#
# @s = person holding compass

#store ID
execute if score %global time.bounty_freezer matches 1.. run return fail

execute unless entity @p[team=hunted,tag=!hu.this] run return fail

tag @s add hu.this
execute as @p[team=hunted,tag=!hu.this] run function su:convert with entity @s
tag @s remove hu.this
data modify storage hunters:temp data.tracking_data.target_uuid set from storage su:main out

# store my dimension
data modify storage hunters:temp data.tracking_data.dimension set from entity @s Dimension


function hunters:item/bounty_compass/update/trackable with storage hunters:temp data.tracking_data

#data remove storage hunters:temp data.tracking_data