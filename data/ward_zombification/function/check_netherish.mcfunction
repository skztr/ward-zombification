execute as \
  @e[type=hoglin,nbt=!{IsImmuneToZombification:true}] \
  at @s \
  unless dimension minecraft:the_nether \
  if predicate ward_zombification:netherish \
  run function ward_zombification:set_immune

execute as \
  @e[type=hoglin,nbt={IsImmuneToZombification:true}] \
  at @s \
  unless dimension minecraft:the_nether \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

execute as \
  @e[type=piglin,nbt=!{IsImmuneToZombification:true}] \
  at @s \
  unless dimension minecraft:the_nether \
  if predicate ward_zombification:netherish \
  run function ward_zombification:set_immune

execute as \
  @e[type=piglin,nbt={IsImmuneToZombification:true}] \
  at @s \
  unless dimension minecraft:the_nether \
  unless predicate ward_zombification:netherish \
  run data merge entity @s {IsImmuneToZombification:false}

schedule function ward_zombification:check_netherish 100t
