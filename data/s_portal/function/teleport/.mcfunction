#> s_portal:teleport/

# プレイヤーとinteractionに実行中のタグ + クールダウン
  tag @e[type=interaction,tag=S_Portal_Maker,tag=S_Portal.Connected,distance=..0.5,limit=1] add S_Portal.Processing
  tag @s add S_Portal.Processing
  scoreboard players set @s S_Portal.PortalCooldown -40

# 自分以外のinteractionで実行
  $execute as @e[type=interaction,tag=S_Portal_Maker,tag=$(Name),tag=!S_Portal.Processing,limit=1] at @s run function s_portal:teleport/interaction
