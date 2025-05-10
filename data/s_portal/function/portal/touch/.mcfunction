## ポータルクリック
  advancement revoke @s only s_portal:touch
  execute unless score @n[type=interaction,tag=S_Portal] S_Portal.PortalCooldown matches 0 run return fail

function s_portal:portal/place/remove
tag @s remove S_Placed
