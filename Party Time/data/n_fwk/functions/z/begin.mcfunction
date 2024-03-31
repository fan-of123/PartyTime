data modify storage n_fwk:storage z.tempUuid set value [I;0,0,0,0]
execute unless score @s n_fwk.uuid0 matches -2147483648..2147483647 run function n_fwk:z/get_uuid
execute store result storage n_fwk:storage z.tempUuid[0] int 1 run scoreboard players get @s n_fwk.uuid0
execute store result storage n_fwk:storage z.tempUuid[1] int 1 run scoreboard players get @s n_fwk.uuid1
execute store result storage n_fwk:storage z.tempUuid[2] int 1 run scoreboard players get @s n_fwk.uuid2
execute store result storage n_fwk:storage z.tempUuid[3] int 1 run scoreboard players get @s n_fwk.uuid3
summon bat ~ 10000 ~ {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["n_fwk.begin","n_fwk.internal"],Health:0.001f,DeathLootTable:"null"}
execute positioned ~ 10000 ~ summon area_effect_cloud run function n_fwk:z/fwk_init

execute if data storage n_fwk:storage z.fireworks[] run function n_fwk:z/spawn/iterate
kill @e[type=marker,tag=n_fwk.context]

summon bat ~ 20000 ~ {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["n_fwk.end","n_fwk.internal"],Health:0.001f,DeathLootTable:"null"}
execute positioned ~ 20000 ~ summon area_effect_cloud run function n_fwk:z/fwk_init

scoreboard players reset #FIREWORKS# n_fwk.global