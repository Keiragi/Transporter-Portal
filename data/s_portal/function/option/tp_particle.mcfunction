## 転移したときのパーティクルを表示する設定

execute if data storage shrs:context Portal_Maker.option{tp_particle:0b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"転移したときに自身にのみ見えるパーティクルを表示するようになりました\n","color":"white"}]
execute if data storage shrs:context Portal_Maker.option{tp_particle:1b} run tellraw @a [{"text":"\n[Portal_Maker] >> ","color":"aqua"},{"text":"転移したときに自身にのみ見えるパーティクルを表示しないようになりました\n","color":"white"}]

execute if data storage shrs:context Portal_Maker.option{tp_particle:0b} run return run data modify storage shrs:context Portal_Maker.option.tp_particle set value 1b
execute if data storage shrs:context Portal_Maker.option{tp_particle:1b} run return run data modify storage shrs:context Portal_Maker.option.tp_particle set value 0b
