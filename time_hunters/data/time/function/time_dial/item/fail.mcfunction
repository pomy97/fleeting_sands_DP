scoreboard players operation %seconds time.dialTime = %cooldown time.dialTime
scoreboard players operation %seconds time.dialTime /= %20 uthi.math

scoreboard players operation %minutes time.dialTime = %seconds time.dialTime
scoreboard players operation %minutes time.dialTime /= %60 uthi.math

scoreboard players operation %minutes_in_sec time.dialTime = %minutes time.dialTime
scoreboard players operation %minutes_in_sec time.dialTime *= %60 uthi.math

scoreboard players operation %seconds time.dialTime -= %minutes_in_sec time.dialTime


title @s actionbar [{bold:true,color:"red",text:""},{text:"Global Cooldown: ",bold:false}, {score:{name:"%minutes",objective:"time.dialTime"}}, " minutes and ", {score:{name:"%seconds",objective:"time.dialTime"}}," seconds"]
execute unless entity @s[gamemode=creative] run summon item ~ ~ ~ {Item:{id:"clock",components:{\
      "enchantment_glint_override": true,\
      "item_name": "Time Dial",\
      "custom_data": {\
        "fleeting_sands": {\
          "item": "time_dial"\
        }\
      },\
      "consumable": {\
        "animation": "spear",\
        "consume_seconds": 1.5,\
        "has_consume_particles": false,\
        "sound": "minecraft:entity.illusioner.prepare_blindness"\
      },\
      "use_cooldown": {\
        "cooldown_group": "fleeting_sands:global",\
        "seconds": 1\
      },\
      "rarity": "epic",\
      "max_stack_size": 1,\
      "lore": [\
        {\
          "text": "Freezes all mobs for 10 seconds",\
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