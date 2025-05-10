#execute at @e[type=interaction,tag=S_Portal] run particle smoke ~ ~2 ~ 0.25 0.2 0.25 0 1
execute at @e[type=interaction,tag=S_Portal] run particle cloud ~ ~2 ~ 0.3 0.5 0.3 0 1

scoreboard players remove @a[scores={S_Portal.PortalCooldown=1..}] S_Portal.PortalCooldown 1
scoreboard players remove @e[type=interaction,tag=S_Portal,scores={S_Portal.PortalCooldown=1..}] S_Portal.PortalCooldown 1

execute as @a at @s positioned ~ ~-0.5 ~ if entity @e[type=shulker,dx=0] \
if predicate s_portal:sneak unless score @s S_Portal.PortalCooldown matches 1.. \
run function s_portal:teleport/
