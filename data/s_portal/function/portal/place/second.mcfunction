tag @s remove S_Placed

function s_portal:portal/place/summon/
title @s actionbar {"text":"ポータルが接続されました","color":"aqua"}
#playsound block.iron_door.open player @s ~ ~ ~ 1 2
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1
