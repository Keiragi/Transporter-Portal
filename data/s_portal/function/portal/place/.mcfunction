## ポータルを設置

# エラー処理
  execute if block ~ ~ ~ #s_portal:deny run return run function s_portal:portal/error/deny
  execute unless block ~ ~1 ~ #s_portal:enable run return run function s_portal:portal/error/not_enough
  execute unless block ~ ~2 ~ #s_portal:enable run return run function s_portal:portal/error/not_enough

# データ取得
  function s_portal:portal/place/summon/get_name

# 他にあるか調べる
  function s_portal:portal/place/check with storage shrs: S_Portal_Maker
  execute if data storage shrs: S_Portal_Maker{Number:2b} run function s_portal:portal/remove/ with storage shrs: S_Portal_Maker

# 通知
  title @s actionbar ["ポータルが",{"text":"設置","bold":true},"されました"]

# 召喚
  function s_portal:portal/place/summon/

# 接続判定
  execute if data storage shrs: S_Portal_Maker{Number:1b} at @s run function s_portal:portal/place/connected with storage shrs: S_Portal_Maker

# 初期化
  data remove storage shrs: S_Portal_Maker
