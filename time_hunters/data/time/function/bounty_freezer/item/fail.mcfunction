scoreboard players operation %seconds time.bounty_freezer = %cooldown time.bounty_freezer
scoreboard players operation %seconds time.bounty_freezer /= %20 uthi.math

scoreboard players operation %minutes time.bounty_freezer = %seconds time.bounty_freezer
scoreboard players operation %minutes time.bounty_freezer /= %60 uthi.math

scoreboard players operation %minutes_in_sec time.bounty_freezer = %minutes time.bounty_freezer
scoreboard players operation %minutes_in_sec time.bounty_freezer *= %60 uthi.math

scoreboard players operation %seconds time.bounty_freezer -= %minutes_in_sec time.bounty_freezer


title @s actionbar [{bold:true,color:"red",text:""},{text:"Global Cooldown: ",bold:false}, {score:{name:"%minutes",objective:"time.bounty_freezer"}}, " minutes and ", {score:{name:"%seconds",objective:"time.bounty_freezer"}}," seconds"]
execute unless entity @s[gamemode=creative] run summon item ~ ~ ~ {Item:{id:"clock",components:{\
      "enchantment_glint_override": true,\
      "item_name": "Bounty Jammer",\
      "custom_name": {\
        "text": "Bounty Jammer",\
        "italic": false,\
        "color": "aqua"\
      },\
      "custom_data": {\
        "fleeting_sands": {\
          "item": "bounty_freezer"\
        }\
      },\
      "consumable": {\
        "animation": "bow",\
        "consume_seconds": 1.5,\
        "has_consume_particles": false,\
        "sound": "intentionally_empty"\
      },\
      "lodestone_tracker":{},\
      "use_cooldown": {\
        "cooldown_group": "fleeting_sands:powerful",\
        "seconds": 180\
      },\
      "rarity": "rare",\
      "max_stack_size": 1,\
      "lore": [\
        {\
          "text": "Freezes the Bounty Compass",\
          "color": "gray",\
          "italic": false\
        },\
        {\
          "text": "for 30 seconds",\
          "color": "gray",\
          "italic": false\
        },\
        "",\
        {\
          "text": "Fleeting Sands SMP",\
          "color": "#d3d387",\
          "bold": true,\
          "italic": false\
        }\
      ]\
    }\
  }\
}