## 手のデータを取って設置処理を開始

# リセット
  advancement revoke @s only s_portal:used
  #title @s actionbar ""

# only_overworldの設定確認
  execute if data storage shrs:context Portal_Maker{only_overworld:1b} run return run function s_portal:portal/error/limit_dimension

# ブロック操作範囲をそのまま距離に反映
  execute store result score @s S_Portal.Measure run attribute @s block_interaction_range get 10
  scoreboard players remove @s S_Portal.Measure 5

# 回帰処理
  execute anchored eyes positioned ^ ^ ^0.5 run function s_portal:item/loop
