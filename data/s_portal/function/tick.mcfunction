#execute at @e[type=interaction,tag=S_Portal] run particle smoke ~ ~2 ~ 0.25 0.25 0.25 0 1
execute at @e[type=interaction,tag=S_Portal] positioned ~ ~1 ~ run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 1 normal @a[distance=1..]
execute at @e[type=interaction,tag=S_Portal] positioned ~ ~1 ~ run particle cloud ~ ~0.5 ~ 0.3 0.1 0.3 0 1 normal @a[distance=..1]

scoreboard players remove @a[scores={S_Portal.PortalCooldown=1..}] S_Portal.PortalCooldown 1
scoreboard players remove @e[type=interaction,tag=S_Portal,scores={S_Portal.PortalCooldown=1..}] S_Portal.PortalCooldown 1

execute as @a at @s positioned ~ ~-1 ~ if entity @e[type=interaction,tag=S_Portal,dx=0] \
if predicate s_portal:sneak unless score @s S_Portal.PortalCooldown matches 1.. \
run function s_portal:teleport/
