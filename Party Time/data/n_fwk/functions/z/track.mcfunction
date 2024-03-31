execute as @e[type=marker,tag=n_fwk.track,predicate=!n_fwk:riding_firework] at @s run function n_fwk:z/as/new
execute as @e[type=firework_rocket,scores={n_fwk.flight=0..}] at @s run function n_fwk:z/as/tick
execute if entity @e[type=marker,tag=n_fwk.track,predicate=n_fwk:riding_firework] run schedule function n_fwk:z/track 1t