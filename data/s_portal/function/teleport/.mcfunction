scoreboard players set @s S_Portal.PortalCooldown -40
execute at @n[type=block_display,distance=2..] run tp @s ~ ~1.5 ~
execute at @n[type=block_display,distance=2..] run playsound entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 1 0.1
execute at @n[type=block_display,distance=2..] positioned ~ ~1 ~ run function s_portal:teleport/particle
