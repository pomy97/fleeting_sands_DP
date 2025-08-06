$execute anchored eyes run summon item_display ^ ^ ^ {item_display: "fixed", item:{id:player_head,components:{profile:{id:$(uuid)}}},Tags:[time.this,time.fb]}
$summon interaction ^ ^ ^ {height:1.8,width:0.6,data:{id:$(uuid)},Tags:[time.fb,time.fb_hitbox]}
execute anchored eyes run tp @n[tag=time.this] ^ ^ ^ ~ ~
tag @n[tag=time.this] remove time.this