# From adv:technical/enderblade/use

advancement revoke @s only trojan:technical/warp/use

#check which hand enderblade is in
execute if predicate trojan:enchantment/warp_mainhand run tag @s add gf.main
execute unless predicate trojan:enchantment/warp_mainhand run tag @s add gf.off

#make sure the item doesn't get deleted
summon item_display ~ ~ ~ {Tags:["gf.spare_slot"]}

execute if entity @s[tag=gf.main] run item replace entity @n[tag=gf.spare_slot,distance=...01] container.0 from entity @s weapon.mainhand
#replace to prevent item deletion; use knowledge book to prevent inventory animation
execute if entity @s[tag=gf.main] run item replace entity @s weapon.mainhand with knowledge_book[item_model="diamond_sword",enchantment_glint_override=true]
execute if entity @s[tag=gf.main] run item replace entity @s weapon.mainhand from entity @n[tag=gf.spare_slot,distance=...01] container.0

execute if entity @s[tag=gf.off] run item replace entity @n[tag=gf.spare_slot,distance=...01] container.0 from entity @s weapon.offhand
execute if entity @s[tag=gf.off] run item replace entity @s weapon.offhand with knowledge_book[item_model="diamond_sword",enchantment_glint_override=true]
execute if entity @s[tag=gf.off] run item replace entity @s weapon.offhand from entity @n[tag=gf.spare_slot,distance=...01] container.0
tag @s remove gf.off
tag @s remove gf.main
kill @n[tag=gf.spare_slot,distance=...01]

#warp
particle reverse_portal ~ ~1 ~ .1 .2 .1 .1 50 normal
execute unless predicate trojan:player/gamemode/creative run experience add @s -1 levels
function trojan:enchantment/warp/ray/cast