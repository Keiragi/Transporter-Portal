# 利き手か逆手か
  execute if items entity @s weapon.mainhand *[custom_data~{"Used":true}] \
  run loot replace entity @s weapon.mainhand loot s_portal:portal_maker
  execute if items entity @s weapon.offhand *[custom_data~{"Used":true}] \
  run loot replace entity @s weapon.offhand loot s_portal:portal_maker
