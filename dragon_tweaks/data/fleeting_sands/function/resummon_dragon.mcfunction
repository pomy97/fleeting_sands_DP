tellraw @a[predicate=fleeting_sands:in_end] {text:"End Crystals have been placed at altar",color:"light_purple"}
execute in minecraft:the_end run summon item 3 65.5 0 {Age:-32768,Item:{id:end_crystal,count:1,components:{rarity:epic,custom_data:{fleeting_sands:{item:'altar_crystal'}}}},NoGravity:true,Glowing:true,Tags:[fleeting.new_crystal]}
execute in minecraft:the_end run summon item 0 65.5 3 {Age:-32768,Item:{id:end_crystal,count:1,components:{rarity:epic,custom_data:{fleeting_sands:{item:'altar_crystal'}}}},NoGravity:true,Glowing:true,Tags:[fleeting.new_crystal]}
execute in minecraft:the_end run summon item 0 65.5 -3 {Age:-32768,Item:{id:end_crystal,count:1,components:{rarity:epic,custom_data:{fleeting_sands:{item:'altar_crystal'}}}},NoGravity:true,Glowing:true,Tags:[fleeting.new_crystal]}
execute in minecraft:the_end run summon item -3 65.5 0 {Age:-32768,Item:{id:end_crystal,count:1,components:{rarity:epic,custom_data:{fleeting_sands:{item:'altar_crystal'}}}},NoGravity:true,Glowing:true,Tags:[fleeting.new_crystal]}

team join technical_team_do_not_join @e[tag=fleeting.new_crystal]
tag @e[tag=fleeting.new_crystal] remove fleeting.new_crystal2