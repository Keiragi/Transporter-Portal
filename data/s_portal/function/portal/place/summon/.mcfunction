# 設置演出
  playsound entity.blaze.hurt player @s ~ ~ ~ 0.5 2 1

# 主要
  summon block_display ~ ~-0.5 ~ {"Tags":["S_Portal_Maker"],"transformation":{"left_rotation":[0f,0f,0f,1f],"right_rotation":[0f,0f,0f,1f],"translation":[-0.5005f,-0.0005f,-0.5005f],"scale":[1.001f,1.001f,1.001f]},"block_state":{"Name":"nether_quartz_ore"},"brightness":{"sky":15,"block":0},\
  "Passengers":[{"id":"shulker","Tags":["S_Portal_Maker"],"NoGravity":1b,"Silent":1b,"Invulnerable":1b,"NoAI":1b,"AttachFace":0b,"Color":15b,"active_effects":[{"id":"invisibility","amplifier":0,"duration":-1,"show_particles":0b},{"id":"resistance","amplifier":4,"duration":-1,"show_particles":0b}]}]}
  execute positioned ~ ~-0.5005 ~ summon interaction run function s_portal:portal/place/summon/interaction

# ローダー
  tag @s add S_Pearl_Player
  execute summon ender_pearl run function s_portal:portal/place/summon/pearl
  tag @s remove S_Pearl_Player

# データ
