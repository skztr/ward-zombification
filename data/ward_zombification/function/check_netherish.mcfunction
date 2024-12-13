execute as \
  @e[type=hoglin,nbt=!{Dimension:"minecraft:the_nether"}] \
  at @s \
  if predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:true}

execute as \
  @e[type=hoglin,nbt=!{Dimension:"minecraft:the_nether"}] \
  at @s \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

execute as \
  @e[type=piglin,nbt=!{Dimension:"minecraft:the_nether"}] \
  at @s \
  if predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:true}

execute as \
  @e[type=piglin,nbt=!{Dimension:"minecraft:the_nether"}] \
  at @s \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

schedule function ward_zombification:check_netherish 100t
