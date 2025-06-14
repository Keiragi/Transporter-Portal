#> s_portal:portal/place/summon/

# 設置演出
  playsound entity.blaze.hurt player @a["distance"=..16] ~ ~ ~ 0.5 2 1

# 主要
  execute positioned ~ ~-0.5 ~ summon block_display run function s_portal:portal/place/summon/block
  execute positioned ~ ~-0.5005 ~ summon interaction run function s_portal:portal/place/summon/interaction

# チャンクローダー
  summon ender_pearl ~ ~ ~ {NoGravity:1b,Tags:["S_Portal_Maker","S_Portal.init"],Invulnerable:1b,Item:{id:"minecraft:ender_pearl",components:{"minecraft:item_model":"minecraft:air"}}}
  data modify entity @e[type=ender_pearl,limit=1,tag=S_Portal.init] Owner set from entity @s UUID
  ride @e[type=ender_pearl,limit=1,tag=S_Portal.init] mount @e[type=block_display,limit=1,tag=S_Portal.init]

# initとNameを置き換え
  execute as @e["tag"=S_Portal.init] run data modify entity @s Tags[1] set from storage minecraft: "S_Portal_Maker"."Name"
