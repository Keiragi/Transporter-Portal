## ポータル上が空気か判定

# 空間判定処理
  execute if data storage shrs:context Portal_Maker.option{place_underwater:1b} unless block ~ ~1 ~ #s_portal:enable run return 0
  execute if data storage shrs:context Portal_Maker.option{place_underwater:1b} unless block ~ ~2 ~ #s_portal:enable run return 0
  execute if data storage shrs:context Portal_Maker.option{place_underwater:0b} unless block ~ ~1 ~ #minecraft:air run return 0
  execute if data storage shrs:context Portal_Maker.option{place_underwater:0b} unless block ~ ~2 ~ #minecraft:air run return 0

# 空気なら成功を返す
  return 1
