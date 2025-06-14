## interactionを攻撃したときの処理

# 接続判定
  execute unless entity @s[tag=S_Portal.Connected] run data modify storage shrs: Portal_Maker.Info merge value {"state":"None","color":"gray"}
  $execute if entity @s[tag=S_Portal.Connected] as @e[limit=1,type=interaction,tag=S_Portal_Maker,tag=$(Name),nbt=!{attack:{}}] at @s run function s_portal:portal/touch/attack/dimension

# 転移先が埋まっていないか確認
  $execute at @e[limit=1,type=interaction,tag=S_Portal_Maker,tag=$(Name),nbt=!{attack:{}}] unless function s_portal:portal/touch/check_air run \
  data modify storage shrs: Portal_Maker.Info merge value {state:"Block",color:"dark_red"}

# 出力
  function s_portal:portal/touch/attack/message with storage shrs: Portal_Maker.Info
  title @a[limit=1,advancements={s_portal:touch={attack=true}}] actionbar {"text":"ℹ 右クリックで除去","color":"white"}

# 初期化
  data remove entity @s attack
  data remove storage shrs: Portal_Maker.Info
