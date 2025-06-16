## ポータルの除去を攻撃でも行えるようにする設定

execute if data storage shrs:context Portal_Maker.option{remove_attack:0b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"ポータルに攻撃したとき除去できるようになりました\n","color":"white"}]
execute if data storage shrs:context Portal_Maker.option{remove_attack:1b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"ポータルに攻撃したとき情報を表示するようになりました\n","color":"white"}]

execute if data storage shrs:context Portal_Maker.option{remove_attack:0b} run return run data modify storage shrs:context Portal_Maker.option.remove_attack set value 1b
execute if data storage shrs:context Portal_Maker.option{remove_attack:1b} run return run data modify storage shrs:context Portal_Maker.option.remove_attack set value 0b
