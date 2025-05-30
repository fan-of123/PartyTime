data modify storage n_fwk:storage z.tempUuid set from entity @s UUID
execute store result score @s n_fwk.uuid0 run data get storage n_fwk:storage z.tempUuid[0]
execute store result score @s n_fwk.uuid1 run data get storage n_fwk:storage z.tempUuid[1]
execute store result score @s n_fwk.uuid2 run data get storage n_fwk:storage z.tempUuid[2]
execute store result score @s n_fwk.uuid3 run data get storage n_fwk:storage z.tempUuid[3]