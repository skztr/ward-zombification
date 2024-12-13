execute as \
  @e[type=hoglin,nbt=!{Dimension:"minecraft:the_nether"},nbt=!{IsImmuneToZombification:true}] \
  at @s \
  if predicate ward_zombification:netherish \
  run function ward_zombification:set_immune

execute as \
  @e[type=hoglin,nbt=!{Dimension:"minecraft:the_nether"},nbt={IsImmuneToZombification:true}] \
  at @s \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

execute as \
  @e[type=piglin,nbt=!{Dimension:"minecraft:the_nether"},nbt=!{IsImmuneToZombification:true}] \
  at @s \
  if predicate ward_zombification:netherish \
  run function ward_zombification:set_immune

execute as \
  @e[type=piglin,nbt=!{Dimension:"minecraft:the_nether"},nbt={IsImmuneToZombification:true}] \
  at @s \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

schedule function ward_zombification:check_netherish 100t
