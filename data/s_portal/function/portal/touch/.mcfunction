## ポータルクリック
  execute if entity @s["advancements"={s_portal:touch={interaction=true}}] run function s_portal:portal/touch/interaction
  execute if entity @s["advancements"={s_portal:touch={attack=true}}] \
  as @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"={"attack":{}}] run function s_portal:portal/touch/attack with entity @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"={"attack":{}}]

# 初期化
  advancement revoke @s only s_portal:touch
