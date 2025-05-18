$execute unless score @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"tag"=$(Name),"nbt"={"interaction":{}}] S_Portal.PortalCooldown matches 0 run return run data remove entity @s interaction
function s_portal:portal/remove/ with entity @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"={"interaction":{}}] "data"."S_Portal_Maker"
