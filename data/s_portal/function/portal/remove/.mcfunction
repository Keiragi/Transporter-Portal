# 通知
  title @s actionbar ["ポータルが",{"text":"除去","color":"light_purple","bold":true},"されました"]
  $execute as @e["type"=shulker,"tag"=$(Name)] at @s run function s_portal:portal/remove/shulker
  playsound entity.ghast.scream block @s ~ ~ ~ 0.5

$kill @e["tag"=$(Name)]
