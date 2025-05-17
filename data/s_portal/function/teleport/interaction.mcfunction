tp @s ~ ~1.25 ~
playsound entity.player.teleport player @a["distance"=..16] ~ ~ ~ 1 1 0.1
execute positioned ~ ~1 ~ run function s_portal:teleport/particle
