## 毎tick実行

# パーティクル
  execute at @e[type=interaction,tag=S_Portal_Maker,tag=!S_Portal.Connected] positioned ~ ~1 ~ run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 1 force @a[distance=1..]
  execute at @e[type=interaction,tag=S_Portal_Maker,tag=!S_Portal.Connected] positioned ~ ~1 ~ run particle smoke ~ ~0 ~ 0.25 0.1 0.25 0 1 normal @a[distance=..1]
  execute at @e[type=interaction,tag=S_Portal_Maker,tag=S_Portal.Connected] positioned ~ ~1 ~ run particle cloud ~ ~1.0 ~ 0.3 0.5 0.3 0 1 force @a[distance=1..]
  execute at @e[type=interaction,tag=S_Portal_Maker,tag=S_Portal.Connected] positioned ~ ~1 ~ run particle cloud ~ ~0.5 ~ 0.3 0.1 0.3 0 1 normal @a[distance=..1]

# 誤撤去を防止
  scoreboard players remove @e[type=interaction,tag=S_Portal_Maker,scores={S_Portal.PortalCooldown=1..}] S_Portal.PortalCooldown 1

# スニーク時 下にいるinteractionの場所で実行
  execute as @a if predicate s_portal:sneak if score @s S_Portal.PortalCooldown matches 1.. at @s \
  positioned ~ ~-1 ~ if entity @e[type=interaction,tag=S_Portal_Maker,tag=S_Portal.Connected,distance=..0.5,limit=1] \
  run function s_portal:teleport/ with entity @e[type=interaction,tag=S_Portal_Maker,tag=S_Portal.Connected,distance=..0.5,limit=1] data.S_Portal_Maker
