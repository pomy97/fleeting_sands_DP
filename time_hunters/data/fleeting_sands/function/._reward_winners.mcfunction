execute unless entity @a[tag=fleeting.first_winner] run tellraw @s {color:gray,text:"First winner was not found or was already rewarded"}

execute as @a[tag=fleeting.first_winner] at @s run loot spawn ~ ~ ~ loot fleeting_sands:first_winner
tag @a remove fleeting.first_winner

execute unless entity @a[tag=fleeting.second_winner] run tellraw @s {color:gray,text:"Second winner(s) not found or were already rewarded"}
execute as @a[tag=fleeting.second_winner] at @s run loot spawn ~ ~ ~ loot fleeting_sands:second_winner
tag @a remove fleeting.second_winner
