# from func:item/bounty_compass/track/get_bounty_data

# STORAGE (tracking_data):
# {
#   target_uuid:"uuid-mess-in-hyphened-hexidecimal",
# }

#get dimension
$data modify storage hunters:temp data.tracking_data.location.dimension set from entity $(target_uuid) Dimension
#get pos
data modify storage hunters:temp data.tracking_data.location.pos set value [I;0,0,0]

$execute store result storage hunters:temp data.tracking_data.location.pos[0] int 1 run data get entity $(target_uuid) Pos[0]
$execute store result storage hunters:temp data.tracking_data.location.pos[1] int 1 run data get entity $(target_uuid) Pos[1]
$execute store result storage hunters:temp data.tracking_data.location.pos[2] int 1 run data get entity $(target_uuid) Pos[2]

# update the compass
function hunters:item/bounty_compass/update/track with storage hunters:temp data.tracking_data

$title @s actionbar {\
    "translate": "item.hunters.bounty_compass.tracking_target_named",\
    "fallback": "Tracking Target [%s]",\
    "color": "gray",\
    "with": [\
        {\
          "selector": "$(target_uuid)",\
          "color": "red"\
        }\
      ]\
}

$execute unless data entity $(target_uuid) {Dimension:"$(dimension)"} run title @s actionbar {\
    "translate": "item.hunters.bounty_compass.wrong_dimension",\
    "fallback": "Target is not in your dimension",\
    "color": "gray"\
}

# Range things
tag @s add hu.this
#if target within 100 blocks, send actionbar msg
$execute as $(target_uuid) if entity @s[distance=..100] \
    run title @p[tag=hu.this] actionbar {\
      "translate": "item.hunters.bounty_compass.target_nearby",\
      "fallback": "Target [%s] is within 100 blocks",\
      "color": "gray",\
      "with": [\
        {\
          "selector": "$(target_uuid)",\
          "color": "red"\
        }\
      ]\
    }
#if target within 50 blocks, p a r t i c l e s
$execute as $(target_uuid) if entity @s[distance=..50] at @s run particle minecraft:dust{color:[1,0,0],scale:0.5} ~ ~3 ~ 0 .25 0 0 10 force @p[tag=hu.this]
tag @s remove hu.this