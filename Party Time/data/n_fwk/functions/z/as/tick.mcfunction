scoreboard players remove @s n_fwk.flight 1
execute if entity @s[scores={n_fwk.flight=..1}] run return run function n_fwk:z/as/cancel
data modify storage n_fwk:storage z.vector set from entity @s Pos
scoreboard players operation #mx n_fwk.temp = @s n_fwk.x
scoreboard players operation #my n_fwk.temp = @s n_fwk.y
scoreboard players operation #mz n_fwk.temp = @s n_fwk.z
execute store result score @s n_fwk.x run data get storage n_fwk:storage z.vector[0] 71
execute store result score @s n_fwk.y run data get storage n_fwk:storage z.vector[1] 71
execute store result score @s n_fwk.z run data get storage n_fwk:storage z.vector[2] 71
scoreboard players operation #mx n_fwk.temp -= @s n_fwk.x
scoreboard players operation #my n_fwk.temp -= @s n_fwk.y
scoreboard players operation #mz n_fwk.temp -= @s n_fwk.z
data modify storage n_fwk:storage z.vector set from entity @s Motion
execute store result score @s n_fwk.mx run data get storage n_fwk:storage z.vector[0] 71
execute store result score @s n_fwk.my run data get storage n_fwk:storage z.vector[1] 71
execute store result score @s n_fwk.mz run data get storage n_fwk:storage z.vector[2] 71
#tellraw @a ["",{"score":{"name":"#mx","objective":"n_fwk.temp"},"color":"green"},{"text":" | ","color":"dark_gray"},{"score":{"name":"#my","objective":"n_fwk.temp"},"color":"green"},{"text":" | ","color":"dark_gray"},{"score":{"name":"#mz","objective":"n_fwk.temp"},"color":"green"}]
#tellraw @a ["",{"score":{"name":"@s","objective":"n_fwk.mx"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"score":{"name":"@s","objective":"n_fwk.my"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"score":{"name":"@s","objective":"n_fwk.mz"},"color":"gold"}]
execute if entity @s[predicate=n_fwk:impeded] run function n_fwk:z/as/cancel