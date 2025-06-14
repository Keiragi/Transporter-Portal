## ポータルが接続したときの処理

# 接続判定
  $tag @e[type=interaction,tag=S_Portal_Maker,tag=$(Name)] add S_Portal.Connected

# 通知
  playsound entity.experience_orb.pickup block @s ~ ~ ~ 0.5 1
  title @s actionbar ["ポータルが",{"text":"接続","color":"aqua","bold":true},"されました"]
