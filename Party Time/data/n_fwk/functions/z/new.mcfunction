scoreboard players set #FIREWORKS# n_fwk.global 1
data modify storage n_fwk:storage z.fireworks append value {id:-1,nbt:{}}
data modify storage n_fwk:storage z.fireworks[-1].nbt set from storage n_fwk:storage z.nbt
scoreboard players add #ID# n_fwk.global 1
execute summon marker run function n_fwk:z/new_as