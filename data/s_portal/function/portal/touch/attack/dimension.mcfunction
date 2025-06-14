#> s_portal:portal/touch/attack/dimension

execute if dimension overworld run return run data modify storage minecraft: S_Portal_Maker.Info merge value {state:"Overworld",color:"aqua"}
execute if dimension the_nether run return run data modify storage minecraft: S_Portal_Maker.Info merge value {state:"The Nether",color:"red"}
execute if dimension the_end run return run data modify storage minecraft: S_Portal_Maker.Info merge value {state:"The End",color:"light_purple"}

# どこにも当てはまらない場合
  data modify storage minecraft: S_Portal_Maker.Info merge value {state:"Ex-Dimension",color:"yellow"}
