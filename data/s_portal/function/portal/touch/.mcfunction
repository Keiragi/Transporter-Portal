## ポータルをクリックしたときの処理

## ポータルクリック
  execute if entity @s[advancements={s_portal:touch={interaction=true}}] as @e[limit=1,type=interaction,tag=S_Portal_Maker,nbt={interaction:{}}] \
  run return run function s_portal:portal/touch/interaction
  execute if entity @s[advancements={s_portal:touch={attack=true}}] as @e[limit=1,type=interaction,tag=S_Portal_Maker,nbt={attack:{}}] \
  run return run function s_portal:portal/touch/attack/ with entity @s data.S_Portal_Maker
