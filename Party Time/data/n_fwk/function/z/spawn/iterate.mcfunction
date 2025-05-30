execute store result score #id n_fwk.temp run data get storage n_fwk:storage z.fireworks[-1].id
execute at @e[type=marker,tag=n_fwk.context,predicate=n_fwk:idmatch] summon firework_rocket run function n_fwk:z/spawn/at
data remove storage n_fwk:storage z.fireworks[-1]
execute if data storage n_fwk:storage z.fireworks[] run function n_fwk:z/spawn/iterate