## block_displayのデータ設定

# 基礎値
  data merge entity @s {Tags:["S_Portal_Maker","S_Portal.init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5005f,-0.0005f,-0.5005f],scale:[1.001f,1.001f,1.001f]},block_state:{Name:"nether_quartz_ore"},brightness:{sky:15,block:0}}

# シュルカー騎乗
  summon shulker ~ -100 ~ {Tags:["S_Portal_Maker","S_Portal.init"],DeathLootTable:"minecraft:empty",DeathTime:20,Silent:1b,Invulnerable:1b,NoAI:1b,Color:15b,active_effects:[{id:"invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"resistance",amplifier:4,duration:-1,show_particles:0b}]}
  ride @e[type=shulker,limit=1,tag=S_Portal.init] mount @s
