tag @s add n_fwk.rocket
data modify storage n_fwk:storage z.nbt set from entity @s {}
execute unless entity @s[tag=n_fwk.API.no_damage] unless data storage n_fwk:storage z.nbt.FireworksItem.tag.n_fwk.no_damage run return fail
execute unless data storage n_fwk:storage z.nbt.FireworksItem.tag.Fireworks.Explosions[] run return fail
data modify entity @s FireworksItem.tag.Fireworks.Explosions set value []
scoreboard players set @s n_fwk.x 0
scoreboard players set @s n_fwk.y 0
scoreboard players set @s n_fwk.z 0
execute store result score @s n_fwk.flight run data get entity @s LifeTime
tag @s add n_fwk.temp
execute summon marker run function n_fwk:z/as/marker_as
tag @s remove n_fwk.temp
schedule function n_fwk:z/track 1t