# From function:enchantment/warp/use
playsound entity.warden.sonic_boom player @a ~ ~ ~ 2

function uthi:utils/raycast_block/cast {\
    skipped_blocks:"#trojan:teleport_permeable", \
    action_blocks:"#uthi:empty", \
    ray_steps:60, \
    step_size:.5, \
    action_function: "uthi:empty", \
    step_function:"trojan:enchantment/warp/ray/vis", \
    end_function:"trojan:enchantment/warp/ray/end"}