## 現在の設定を表示

execute if data storage shrs:context Portal_Maker.option{only_overworld:0b} run data modify storage shrs:temp Portal_Maker.option.only_overworld set value "OFF"
execute if data storage shrs:context Portal_Maker.option{only_overworld:1b} run data modify storage shrs:temp Portal_Maker.option.only_overworld set value "ON"
execute if data storage shrs:context Portal_Maker.option{remove_attack:0b} run data modify storage shrs:temp Portal_Maker.option.remove_attack set value "OFF"
execute if data storage shrs:context Portal_Maker.option{remove_attack:1b} run data modify storage shrs:temp Portal_Maker.option.remove_attack set value "ON"
execute if data storage shrs:context Portal_Maker.option{place_underwater:0b} run data modify storage shrs:temp Portal_Maker.option.place_underwater set value "OFF"
execute if data storage shrs:context Portal_Maker.option{place_underwater:1b} run data modify storage shrs:temp Portal_Maker.option.place_underwater set value "ON"

tellraw @s [{"text":"--------------------\n\n"},{"color":"aqua","text":"[Portal_Maker]\n\n"},"Overworldのみ設置可能 : ",{"nbt":"Portal_Maker.option.only_overworld","storage":"shrs:temp"},"\n攻撃時にポータルを撤去 : ",{"nbt":"Portal_Maker.option.remove_attack","storage":"shrs:temp"},"\n水中にポータル設置可 : ",{"nbt":"Portal_Maker.option.place_underwater","storage":"shrs:temp"},{"text":"\n\n--------------------"}]

data remove storage shrs:temp Portal_Maker.option
