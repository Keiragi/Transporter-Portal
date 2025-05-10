playsound entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 1 0.1
scoreboard players set @s S_Portal.PortalCooldown 40
execute at @n[type=block_display,distance=4..] run tp @s ~ ~1 ~
