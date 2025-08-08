scoreboard players reset @s compass

execute if items entity @s container.* compass[minecraft:custom_data~{hunters:{}}] run return run tellraw @s {color:gray,text:"You already have a Bounty Compass"}
tellraw @s {color:gray,text:"Dropped Bounty Compass"}
execute anchored eyes run loot spawn ^ ^ ^ loot hunters:item/bounty_compass