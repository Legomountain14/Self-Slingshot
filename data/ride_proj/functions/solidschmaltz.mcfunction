kill @e[type=arrow,tag=arrow1-SolidSchmaltz,nbt={inGround:1b}]


#kill arrows in water
execute at @e[type=minecraft:arrow,tag=arrow1-SolidSchmaltz] if block ~ ~ ~ water run execute as @e[type=minecraft:arrow,tag=arrow1-SolidSchmaltz] run kill @s


# kill other arrows to prevent teleportation:
execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true,"extra":[{"text":"Self Slingshot","color":"red","bold":true,"italic":false,"obfuscated":false},{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true}]}'}}}}] run execute as SolidSchmaltz run kill @e[type=minecraft:arrow,nbt={Owner: [I; -367560190, -998814152, -2057205432, 1398135003],inGround:1b}]



execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true,"extra":[{"text":"Self Slingshot","color":"red","bold":true,"italic":false,"obfuscated":false},{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true}]}'}}}}] run execute as SolidSchmaltz run tag @e[type=minecraft:arrow,sort=nearest,limit=1,nbt={Owner: [I; -367560190, -998814152, -2057205432, 1398135003]}] add arrow1-SolidSchmaltz
execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true,"extra":[{"text":"Self Slingshot","color":"red","bold":true,"italic":false,"obfuscated":false},{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true}]}'}}}}] run execute as SolidSchmaltz run ride SolidSchmaltz mount @e[type=minecraft:arrow,sort=nearest,limit=1,tag=arrow1-SolidSchmaltz,nbt={Owner: [I; -367560190, -998814152, -2057205432, 1398135003]}]
execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true,"extra":[{"text":"Self Slingshot","color":"red","bold":true,"italic":false,"obfuscated":false},{"text":"A","color":"blue","bold":true,"italic":true,"obfuscated":true}]}'}}}}] run execute as SolidSchmaltz run tag @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!arrow1-SolidSchmaltz] add arrow2-SolidSchmaltz
execute if entity @e[tag=arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz] run kill @e[tag=arrow1-SolidSchmaltz]
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz] run tag @e[tag=arrow2-SolidSchmaltz] add between-SolidSchmaltz
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz,tag=between-SolidSchmaltz] run tag @e[tag=between-SolidSchmaltz,tag=arrow2-SolidSchmaltz] remove arrow2-SolidSchmaltz
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=!arrow2-SolidSchmaltz] run execute if entity @e[tag=between-SolidSchmaltz] run tag @e[tag=between-SolidSchmaltz] add arrow1-SolidSchmaltz
execute if entity @e[tag=arrow1-SolidSchmaltz,tag=between-SolidSchmaltz,tag=!arrow2-SolidSchmaltz] run tag @e[tag=between-SolidSchmaltz,tag=!arrow2-SolidSchmaltz] remove between-SolidSchmaltz
