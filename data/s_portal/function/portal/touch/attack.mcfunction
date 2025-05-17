execute if entity @s["tag"=S_Portal.Connected] run data modify storage minecraft: "S_Portal_Maker"."Info" merge value {"state":"接続","color":"aqua"}
execute unless entity @s["tag"=S_Portal.Connected] run data modify storage minecraft: "S_Portal_Maker"."Info" merge value {"state":"未接続","color":"gray"}
execute at @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"=!{"attack":{}}] unless block ~ ~2 ~ #air run data modify storage minecraft: "S_Portal_Maker"."Info" merge value {"state":"使用不可","color":"red"}
execute at @e["limit"=1,"type"=interaction,"tag"=S_Portal_Maker,"nbt"=!{"attack":{}}] unless block ~ ~3 ~ #air run data modify storage minecraft: "S_Portal_Maker"."Info" merge value {"state":"使用不可","color":"red"}

function s_portal:portal/touch/message with storage minecraft: "S_Portal_Maker"."Info"
data remove entity @s attack
data remove storage minecraft: "S_Portal_Maker"."Info"
