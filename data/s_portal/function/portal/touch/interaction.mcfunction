## interactionに触れたときの処理

# 初期化
  advancement revoke @a[advancements={s_portal:touch={}}] only s_portal:touch

# 設置直後なら停止
  execute unless score @s S_Portal.PortalCooldown matches 0 run return run data remove entity @s interaction

# 消去
  function s_portal:portal/remove/ with entity @s data.S_Portal_Maker
