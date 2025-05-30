data modify storage n_fwk:storage z.math.internal set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute if data storage n_fwk:storage z.math.in.x run data modify storage n_fwk:storage z.math.internal[0] set from storage n_fwk:storage z.math.in.x
execute if data storage n_fwk:storage z.math.in.y run data modify storage n_fwk:storage z.math.internal[4] set from storage n_fwk:storage z.math.in.y
execute if data storage n_fwk:storage z.math.in.z run data modify storage n_fwk:storage z.math.internal[8] set from storage n_fwk:storage z.math.in.z
data modify entity @s transformation set from storage n_fwk:storage z.math.internal
data modify storage n_fwk:storage z.math.out set from entity @s transformation.scale[0]
kill @s