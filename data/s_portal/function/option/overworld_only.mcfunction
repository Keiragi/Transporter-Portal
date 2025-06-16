## ポータルの設置をoverworld限定にする設定

execute if data storage shrs:context Portal_Maker.option{only_overworld:0b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"設置可能ディメンションが制限されました\n","color":"white"}]
execute if data storage shrs:context Portal_Maker.option{only_overworld:1b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"すべてのディメンションで設置できるようになりました\n","color":"white"}]

execute if data storage shrs:context Portal_Maker.option{only_overworld:0b} run return run data modify storage shrs:context Portal_Maker.option.only_overworld set value 1b
execute if data storage shrs:context Portal_Maker.option{only_overworld:1b} run return run data modify storage shrs:context Portal_Maker.option.only_overworld set value 0b
