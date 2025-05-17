scoreboard players set @s S_Portal.PortalCooldown -40

$execute at @e["type"=interaction,"tag"=S_Portal_Maker,"distance"=0.5..,"tag"=$(Name)] \
run function s_portal:teleport/interaction
