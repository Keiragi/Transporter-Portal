#> s_portal:teleport/interaction

# 移動可否の判別
  execute store result storage minecraft: "S_Portal_Maker"."Info"."Enable" byte 1 run function s_portal:portal/touch/check_air

# 無理ならエラーを返す
  execute if data storage minecraft: S_Portal_Maker.Info{Enable:0b} as @a[limit=1,tag=S_Portal.Processing] run return run function s_portal:portal/error/cannot_tp

# 移動処理
  tp @a[limit=1,tag=S_Portal.Processing] ~ ~1.25 ~
  playsound entity.player.teleport player @a[distance=..16] ~ ~ ~ 1 1 0.1
  execute as @a[limit=1,tag=S_Portal.Processing] positioned ~ ~1 ~ run function s_portal:teleport/particle

# 初期化
  tag @e[tag=S_Portal.Processing] remove S_Portal.Processing
