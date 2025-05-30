PartyTime is a datapack that enables you to use fireworks and fireworks explosions as VFX and SFX without damaging players, making use of subtick timing popularized by BigPapi's Delta! For Minecraft java edition 1.21.1 (also has a 1.20.2 branch).
For the nerds: Details on how to mesh this pack with your own at the bottom.

# Instant Explosions

This datapack has two functions for instantanous explosions, listed below:

`/function n_fwk:api/burst_macro`: This function will create a fireworks explosion at the location it is run. It is a macro function, where in the 'nbt' field you will pass the NBT of the entire fireworks entity as you would use in a /summon command. 

Example use: 

>`/function n_fwk:api/burst_macro {nbt:{FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16755553]}]}}}}}`

`/function n_fwk:api/burst_storage`: This function will create a fireworks explosion at the location it is run. This is *not* a macro function. Instead, it will look for NBT in the path `api.nbt` in the storage `n_fwk:storage`. Data stored in `api.nbt` is not changed by the datapack, so this is ideal for if you want to spawn multiple identical explosions.

Example use: 

>`/data modify storage n_fwk:storage api.nbt set value {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;2097121],fade_colors:[I;3828561]},{shape:"star",has_twinkle:true,colors:[I;16711918],fade_colors:[I;5916528]}]}}}}`
>
>`/function n_fwk:api/burst_storage`

# Delayed Explosions

### ####DEPRECATED####

This feature has been temporarily removed for the 1.21.1 version.

~~This datapack also supports making non-damaging fireworks that do not explode instantly and otherwise behave like normal fireworks. To use: either add a "n_fwk.API.no_damage" tag to the fireworks entity *as it is spawned*, or have the nbt tag `n_fwk:{no_damage:True}` stored in the items NBT data. This is only checked the *first tick it exists* and cannot be added later. Sorry!~~

~~Examples:~~

~~>`summon firework_rocket ~ ~.5 ~ {LifeTime:20,Tags:["n_fwk.API.no_damage"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;11549695],fade_colors:[I;0]},{shape:"small_ball",has_twinkle:true,colors:[I;14484479],fade_colors:[I;0]}]}}}}`~~
~~>~~
~~>`/give @p firework_rocket{n_fwk:{no_damage:True},Fireworks:{Flight:2b,Explosions:[{Type:1,Colors:[I;16774915],FadeColors:[I;16756257]}]}} 1`~~

~~Notably, this part of the datapack is extremely WIP and will probably break. Feel free to report bugs but just know this is only *barely* supported.~~

# For the nerds

All entities spawned by this datapack will have the tag "n_fwk.internal" tag. Because this uses the AEC-and-bat subtick method, make sure to add an inverted condition check for that tag to any `player_hurt_entity` or `player_killed_entity` advancements in your datapack, as they will otherwise be potentially triggered by the subtick logic of this datapack. Also, if you do anything with fireworks entities involving passengers, make sure to exclude any entities with that tag from your datapack logic.
