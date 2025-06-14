## ポータル上が空気か判定

# 空間判定処理
  execute unless block ~ ~2 ~ #s_portal:enable run return 0
  execute unless block ~ ~3 ~ #s_portal:enable run return 0

# 空気なら成功を返す
  return 1
