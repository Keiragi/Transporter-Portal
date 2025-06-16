## 水中でポータルを設置できるようにする設定

execute if data storage shrs:context Portal_Maker.option{place_underwater:0b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"ポータルを水中で設置できるようになりました\n","color":"white"}]
execute if data storage shrs:context Portal_Maker.option{place_underwater:1b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"ポータルを水中で設置できないようになりました\n","color":"white"}]

execute if data storage shrs:context Portal_Maker.option{place_underwater:0b} run return run data modify storage shrs:context Portal_Maker.option.place_underwater set value 1b
execute if data storage shrs:context Portal_Maker.option{place_underwater:1b} run return run data modify storage shrs:context Portal_Maker.option.place_underwater set value 0b
