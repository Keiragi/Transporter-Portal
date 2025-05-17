# 設置演出
  playsound entity.blaze.hurt player @s ~ ~ ~ 0.5 2 1

# 主要
  execute positioned ~ ~-0.5 ~ summon block_display run function s_portal:portal/place/summon/block
  execute positioned ~ ~-0.5005 ~ summon interaction run function s_portal:portal/place/summon/interaction

# チャンクローダー
  summon ender_pearl ~ ~ ~ {"NoGravity":1b,"Tags":["S_Portal_Maker","S_Portal.init"]}
  data modify entity @e["type"=ender_pearl,"limit"=1,"tag"=S_Portal.init] Owner set from entity @s UUID

# initとNameを置き換え
  execute as @e["tag"=S_Portal.init] run data modify entity @s Tags[1] set from storage minecraft: "S_Portal_Maker"."Name"
