## loadしたときの処理

# 死んだときのチャンクローダーを保護
  gamerule enderPearlsVanishOnDeath false

# 初期設定
  scoreboard objectives add S_Portal.Measure dummy
  scoreboard objectives add S_Portal.PortalCooldown minecraft.custom:minecraft.play_time

# 設定が無ければ作成
  execute unless data storage shrs:context Portal_Maker.option.only_overworld run data modify storage shrs:context Portal_Maker.option.only_overworld set value 0b
  execute unless data storage shrs:context Portal_Maker.option.remove_attack run data modify storage shrs:context Portal_Maker.option.remove_attack set value 0b
  execute unless data storage shrs:context Portal_Maker.option.place_underwater run data modify storage shrs:context Portal_Maker.option.place_underwater set value 1b
