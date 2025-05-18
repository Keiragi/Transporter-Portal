## 転移先空間無し
  title @s actionbar [{"text":"⚠","color":"red"},{"text":" 転移先が埋まっています ","color":"white"},{"text":"⚠","color":"red"}]
  playsound block.note_block.bit player @s ~ ~ ~ 0.25 0.5
  # 初期化
    tag @e["tag"=S_Portal.Processing] remove S_Portal.Processing
