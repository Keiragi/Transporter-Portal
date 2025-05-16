execute unless score @n[type=interaction,tag=S_Portal_Maker] S_Portal.PortalCooldown matches 0 run return fail

function s_portal:portal/place/remove with entity @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"={"interaction":{}}] data.S_Portal_Maker
