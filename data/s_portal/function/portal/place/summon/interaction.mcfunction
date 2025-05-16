##interactionのデータ設定
# 基礎値
  scoreboard players set @s S_Portal.PortalCooldown 10
  data merge entity @s {"width":1.001f,"height":1.001f,"Tags":["S_Portal_Maker","S_Portal.init"]}

# IDの設定
  data modify entity @s "data"."S_Portal_Maker"."Name" set from storage minecraft: "S_Portal_Maker"."Name"
