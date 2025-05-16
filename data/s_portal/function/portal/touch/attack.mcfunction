tellraw @a[limit=1,advancements={s_portal:touch={attack=true}}] ["\n設置者 : < ",{"color":"green","entity":"@s","nbt":"data.S_Portal_Maker.Name"}," >"]
execute if entity @s[tag=S_Portal.Connected] run tellraw @a[limit=1,advancements={s_portal:touch={attack=true}}] ["状態　 : < ",{"bold":true,"color":"aqua","text":"接続"}," >\n"]
execute unless entity @s[tag=S_Portal.Connected] run tellraw @a[limit=1,advancements={s_portal:touch={attack=true}}] ["状態　 : < ",{"bold":true,"color":"white","text":"未接続"}," >\n"]
data remove entity @s attack
