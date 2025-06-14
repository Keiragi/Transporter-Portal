## ユーザーIDの取得

# 名前の取得
  summon item_display ~ ~ ~ {UUID:[I;0,0,0,1],view_range:0f,item:{"id":"player_head"}}
  item modify entity 0-0-0-0-1 contents {function:"fill_player_head",entity:this}
  data modify storage shrs:temp Portal_Maker.Name set from entity 0-0-0-0-1 item.components."minecraft:profile".name
  kill 0-0-0-0-1
