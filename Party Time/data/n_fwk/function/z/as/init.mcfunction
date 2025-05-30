tag @s add n_fwk.rocket
data modify storage n_fwk:storage z.nbt set from entity @s {}
execute unless entity @s[tag=n_fwk.API.no_damage] unless data storage n_fwk:storage z.nbt.FireworksItem.components."minecraft:custom_data".n_fwk.no_damage run return fail
execute unless data storage n_fwk:storage z.nbt.FireworksItem.components."minecraft:fireworks".explosions[] run return fail
data modify entity @s FireworksItem.components."minecraft:fireworks".explosions set value []
#execute store result score @s n_fwk.x run data get storage n_fwk:storage z.nbt.Pos[0] 71
#execute store result score @s n_fwk.y run data get storage n_fwk:storage z.nbt.Pos[1] 71
#execute store result score @s n_fwk.z run data get storage n_fwk:storage z.nbt.Pos[2] 71
scoreboard players set @s n_fwk.dist 0
execute store result score @s n_fwk.flight run data get storage n_fwk:storage z.nbt.LifeTime
tag @s add n_fwk.temp
execute summon marker run function n_fwk:z/as/marker_as
tag @s remove n_fwk.temp
schedule function n_fwk:z/track 1t