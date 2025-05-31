#> s_portal:portal/touch/attack/message

$tellraw @a["limit"=1,"advancements"={s_portal:touch={attack=true}}] ["\
--------------------\n\
設置者 : < ",{"color":"green","entity":"@s","nbt":"data.S_Portal_Maker.Name"}," >\n\
移動先 : < ",{"bold":true,"color":"$(color)","text":"$(state)"}," >\n\
--------------------\
"]
