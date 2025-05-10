tag @s add S_Placed

execute if entity @e[type=shulker,tag=S_Portal] run function s_portal:portal/place/remove
function s_portal:portal/place/summon
