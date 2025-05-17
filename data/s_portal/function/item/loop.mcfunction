## ブロック検知処理
  scoreboard players remove @s S_Portal.Measure 1

# ブロックがあれば設置処理
  execute unless block ~ ~ ~ #s_portal:through align xyz positioned ~0.5 ~0.5 ~0.5 \
  run return run function s_portal:portal/place/

# 無ければ繰り返す
  execute if entity @s["scores"={S_Portal.Measure=0..}] positioned ^ ^ ^0.1 run function s_portal:item/loop
