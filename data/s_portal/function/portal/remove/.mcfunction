## 除去通知

# 自分にだけ
  $execute as $(Name) at @s run function s_portal:portal/remove/player

# 全体で一度だけ
  $execute as @e[type=shulker,tag=S_Portal_Maker,tag=$(Name)] at @s run function s_portal:portal/remove/shulker

# 全体消去
  $kill @e[tag=$(Name)]
