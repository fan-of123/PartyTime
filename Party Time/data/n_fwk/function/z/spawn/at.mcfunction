data modify storage n_fwk:storage z.fireworks[-1].nbt.LifeTime set value 0
data modify storage n_fwk:storage z.fireworks[-1].nbt.Life set value 0
data modify storage n_fwk:storage z.fireworks[-1].nbt.Silent set value 1b
data remove storage n_fwk:storage z.fireworks[-1].nbt.Motion
data remove storage n_fwk:storage z.fireworks[-1].nbt.power
data modify entity @s {} merge from storage n_fwk:storage z.fireworks[-1].nbt