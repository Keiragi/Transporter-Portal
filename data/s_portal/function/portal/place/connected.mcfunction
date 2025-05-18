$tag @e["type"=interaction,"tag"=S_Portal_Maker,"tag"=$(Name)] add S_Portal.Connected
playsound entity.experience_orb.pickup block @s ~ ~ ~ 0.5 1

# 通知
  title @s actionbar ["ポータルが",{"text":"接続","color":"aqua","bold":true},"されました"]
