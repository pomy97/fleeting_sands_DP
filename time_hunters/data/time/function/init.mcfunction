scoreboard objectives add time.dialTime dummy
scoreboard objectives add time.bounty_freezer dummy
scoreboard objectives add time.flashback dummy
scoreboard objectives add time.sand_bolt dummy

schedule function time:clocks/1s 1s replace
schedule function time:clocks/tick 1t replace