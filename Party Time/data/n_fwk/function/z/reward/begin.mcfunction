advancement revoke @s only n_fwk:begin
scoreboard players reset @a n_fwk.gm
execute as @a[gamemode=!spectator,gamemode=!creative] run function n_fwk:z/reward/copy_gamemode