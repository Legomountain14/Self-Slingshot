kill @e[type=arrow,tag=arrow1-mavel43,nbt={inGround:1b}]


#kill arrows in water
execute at @e[type=minecraft:arrow,tag=arrow1-mavel43] if block ~ ~ ~ water run execute as @e[type=minecraft:arrow,tag=arrow1-mavel43] run kill @s


# kill other arrows to prevent teleportation:
execute if entity @e[name="mavel43",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as mavel43 run kill @e[type=minecraft:arrow,nbt={Owner: [I; 2055730012, 2048016395, -1790219199, -96384137],inGround:1b}]



execute if entity @e[name="mavel43",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as mavel43 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,nbt={Owner: [I; 2055730012, 2048016395, -1790219199, -96384137]}] add arrow1-mavel43
execute if entity @e[name="mavel43",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as mavel43 run ride mavel43 mount @e[type=minecraft:arrow,sort=nearest,limit=1,tag=arrow1-mavel43,nbt={Owner: [I; 2055730012, 2048016395, -1790219199, -96384137]}]
execute if entity @e[name="mavel43",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as mavel43 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!arrow1-mavel43] add arrow2-mavel43
execute if entity @e[tag=arrow1-mavel43] run execute if entity @e[tag=arrow2-mavel43] run kill @e[tag=arrow1-mavel43]
execute if entity @e[tag=!arrow1-mavel43] run execute if entity @e[tag=arrow2-mavel43] run tag @e[tag=arrow2-mavel43] add between-mavel43
execute if entity @e[tag=!arrow1-mavel43] run execute if entity @e[tag=arrow2-mavel43,tag=between-mavel43] run tag @e[tag=between-mavel43,tag=arrow2-mavel43] remove arrow2-mavel43
execute if entity @e[tag=!arrow1-mavel43] run execute if entity @e[tag=!arrow2-mavel43] run execute if entity @e[tag=between-mavel43] run tag @e[tag=between-mavel43] add arrow1-mavel43
execute if entity @e[tag=arrow1-mavel43,tag=between-mavel43,tag=!arrow2-mavel43] run tag @e[tag=between-mavel43,tag=!arrow2-mavel43] remove between-mavel43
