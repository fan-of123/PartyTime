scoreboard players remove @s n_fwk.flight 1
execute if entity @s[scores={n_fwk.flight=..1}] run return run function n_fwk:z/as/cancel
#data modify storage n_fwk:storage z.vector set from entity @s Motion
#execute store result score @s n_fwk.mx run data get storage n_fwk:storage z.vector[0] 71
#execute store result score @s n_fwk.my run data get storage n_fwk:storage z.vector[1] 71
#execute store result score @s n_fwk.mz run data get storage n_fwk:storage z.vector[2] 71
#data modify storage n_fwk:storage z.vector set from entity @s Pos
#scoreboard players operation #mx n_fwk.temp = @s n_fwk.x
#scoreboard players operation #my n_fwk.temp = @s n_fwk.y
#scoreboard players operation #mz n_fwk.temp = @s n_fwk.z
#execute store result score @s n_fwk.x run data get storage n_fwk:storage z.vector[0] 71
#execute store result score @s n_fwk.y run data get storage n_fwk:storage z.vector[1] 71
#execute store result score @s n_fwk.z run data get storage n_fwk:storage z.vector[2] 71
#data modify storage n_fwk:storage z.math.in set value {x:0.0f,y:0.0f,z:0.0f}
#execute store result storage n_fwk:storage z.math.in.x float 1 run scoreboard players operation #mx n_fwk.temp -= @s n_fwk.x
#execute store result storage n_fwk:storage z.math.in.y float 1 run scoreboard players operation #my n_fwk.temp -= @s n_fwk.y
#execute store result storage n_fwk:storage z.math.in.z float 1 run scoreboard players operation #mz n_fwk.temp -= @s n_fwk.z
#execute summon block_display run function n_fwk:z/math/sqrt

#scoreboard players operation #dist_prev n_fwk.temp = @s n_fwk.dist
#execute store result score @s n_fwk.dist run data get storage n_fwk:storage z.math.out 100
#scoreboard players remove #dist_prev n_fwk.temp 50
#execute if score @s n_fwk.dist < #dist_prev n_fwk.temp if entity @s[predicate=n_fwk:impeded] run function n_fwk:z/as/cancel