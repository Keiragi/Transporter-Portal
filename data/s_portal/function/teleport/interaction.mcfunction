## 移動可能か判定し、可能なら処理開始

# 移動可否の判別
  execute positioned ~ ~1 ~ unless function s_portal:portal/touch/check_air run return run function s_portal:portal/error/cannot_tp

# 移動処理
  tp @a[limit=1,tag=S_Portal.Processing] ~ ~1.25 ~
  playsound entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 1 0.1
  execute if data storage shrs:context Portal_Maker.option{tp_particle:1b} as @a[limit=1,tag=S_Portal.Processing] positioned ~ ~1 ~ run function s_portal:teleport/particle

# 初期化
  tag @e[tag=S_Portal.Processing] remove S_Portal.Processing
