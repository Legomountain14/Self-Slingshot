kill @e[type=arrow,tag=arrow1-SolidSchmaltz,nbt={inGround:1b}]

execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as SolidSchmaltz run tag @e[type=minecraft:arrow,sort=nearest,limit=1,nbt={Owner: [I; -367560190, -998814152, -2057205432, 1398135003]}] add arrow1-SolidSchmaltz
execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as SolidSchmaltz run ride SolidSchmaltz mount @e[type=minecraft:arrow,sort=nearest,limit=1,tag=arrow1-SolidSchmaltz,nbt={Owner: [I; -367560190, -998814152, -2057205432, 1398135003]}]
execute if entity @e[name="SolidSchmaltz",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as SolidSchmaltz run tag @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!arrow1-SolidSchmaltz] add arrow2-SolidSchmaltz
execute if entity @e[tag=arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz] run kill @e[tag=arrow1-SolidSchmaltz]
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz] run tag @e[tag=arrow2-SolidSchmaltz] add between-solidschmaltz
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=arrow2-SolidSchmaltz,tag=between-solidschmaltz] run tag @e[tag=between-solidschmaltz,tag=arrow2-SolidSchmaltz] remove arrow2-SolidSchmaltz
execute if entity @e[tag=!arrow1-SolidSchmaltz] run execute if entity @e[tag=!arrow2-SolidSchmaltz] run execute if entity @e[tag=between-solidschmaltz] run tag @e[tag=between-solidschmaltz] add arrow1-SolidSchmaltz
execute if entity @e[tag=arrow1-SolidSchmaltz,tag=between-solidschmaltz,tag=!arrow2-SolidSchmaltz] run tag @e[tag=between-solidschmaltz,tag=!arrow2-SolidSchmaltz] remove between-solidschmaltz
