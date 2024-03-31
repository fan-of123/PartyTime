ride @s mount @e[type=firework_rocket,tag=n_fwk.temp,limit=1]
tag @s add n_fwk.track
tag @s add n_fwk.internal
data modify entity @s data.n_fwk.nbt set from storage n_fwk:storage z.nbt