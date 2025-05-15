title @s actionbar {"text":"ポータルが除去されました","color":"light_purple"}
execute at @e[type=shulker] run particle block{block_state:nether_quartz_ore} ~ ~1 ~ 0.25 0.1 0.25 0 10
execute at @e[type=shulker] run playsound block.stone.break player @a[distance=..16] ~ ~ ~ 1 1 0.1
tp @e[type=shulker,sort=nearest,limit=2] 0 -100 0
kill @e[tag=S_Portal_Maker]
#playsound entity.ghast.scream player @s ~ ~ ~ 0.5
