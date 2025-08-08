#new peeps tag
scoreboard players set @a[tag=!kits.joined] kits.combat 0
tag @a[tag=!kits.joined] add kits.joined

#command combat tag
scoreboard players enable @a[gamemode=creative] get_kit
scoreboard players enable @a[gamemode=creative] store_kit
scoreboard players enable @a kits.help

scoreboard players reset @a[gamemode=!creative] get_kit
scoreboard players reset @a[gamemode=!creative] store_kit

#commands
#execute as @a[scores={get_kit=1..}] run function kits:get/prep
execute as @a[scores={store_kit=1..},gamemode=creative] run function kits:store/prep
execute as @a[scores={kits.help=1..}] run function kits:help/main
execute as @a[scores={kits.help=-1}] run function kits:help/q1
execute as @a[scores={kits.help=-2}] run function kits:help/q2
execute as @a[scores={kits.help=-3}] run function kits:help/q3
execute as @a[scores={kits.help=-4}] run function kits:help/q4

execute as @a[scores={get_kit=1..},gamemode=creative] run function kits:get/prep

schedule function kits:tick 1t