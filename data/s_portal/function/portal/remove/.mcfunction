## 除去通知

# 初期化
  advancement revoke @a[advancements={s_portal:touch={}}] only s_portal:touch

# 自分にだけ
  $execute as $(Name) at @s run function s_portal:portal/remove/player

# 全体で一度だけ
  $execute as @e[type=shulker,tag=S_Portal_Maker,tag=$(Name)] at @s run function s_portal:portal/remove/shulker

# 全体消去
  $kill @e[tag=$(Name)]
