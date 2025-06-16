## 現在の設定を表示

execute if data storage shrs:context Portal_Maker.option{only_overworld:0b} run data modify storage shrs:temp Portal_Maker.option.only_overworld set value "OFF"
execute if data storage shrs:context Portal_Maker.option{only_overworld:1b} run data modify storage shrs:temp Portal_Maker.option.only_overworld set value "ON"

tellraw @s [{"text":"--------------------\n\n"},{"color":"aqua","text":"[Portal_Maker]\n\n"},"Overworldのみ設置可能 : ",{"nbt":"Portal_Maker.option.only_overworld","storage":"shrs:temp"},{"text":"\n\n--------------------"}]
