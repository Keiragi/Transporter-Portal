## loadしたときの処理

# 死んだときのチャンクローダーを保護
  gamerule enderPearlsVanishOnDeath false

# 初期設定
  scoreboard objectives add S_Portal.Measure dummy
  scoreboard objectives add S_Portal.PortalCooldown minecraft.custom:minecraft.play_time
