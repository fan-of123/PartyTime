execute unless score #INSTALLED# n_fwk.global matches 1 run return fail
#execute as @e[type=firework_rocket,tag=!n_fwk.rocket] at @s run function n_fwk:z/as/init
execute if score #FIREWORKS# n_fwk.global matches 1 as @a[limit=1] at @s run function n_fwk:z/begin