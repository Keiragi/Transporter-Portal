## ポータル設置
  # エラー処理
    execute if block ~ ~ ~ #s_portal:deny run return run function s_portal:portal/error/deny
    execute unless block ~ ~1 ~ air run return run function s_portal:portal/error/not_enough
    execute unless block ~ ~2 ~ air run return run function s_portal:portal/error/not_enough

  # 前
    execute unless entity @s[tag=S_Placed] run return run function s_portal:portal/place/first

  # 後
    function s_portal:portal/place/second
