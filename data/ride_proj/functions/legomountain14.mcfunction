kill @e[type=arrow,tag=arrow1-Legomountain14,nbt={inGround:1b}]

execute if entity @e[name="Legomountain14",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as Legomountain14 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,nbt={Owner: [I; 1312627576, 1134316269, -2067465437, 838602860]}] add arrow1-Legomountain14
execute if entity @e[name="Legomountain14",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as Legomountain14 run ride Legomountain14 mount @e[type=minecraft:arrow,sort=nearest,limit=1,tag=arrow1-Legomountain14,nbt={Owner: [I; 1312627576, 1134316269, -2067465437, 838602860]}]
execute if entity @e[name="Legomountain14",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as Legomountain14 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!arrow1-Legomountain14] add arrow2-Legomountain14
execute if entity @e[tag=arrow1-Legomountain14] run execute if entity @e[tag=arrow2-Legomountain14] run kill @e[tag=arrow1-Legomountain14]
execute if entity @e[tag=!arrow1-Legomountain14] run execute if entity @e[tag=arrow2-Legomountain14] run tag @e[tag=arrow2-Legomountain14] add between-legomountain14
execute if entity @e[tag=!arrow1-Legomountain14] run execute if entity @e[tag=arrow2-Legomountain14,tag=between-legomountain14] run tag @e[tag=between-legomountain14,tag=arrow2-Legomountain14] remove arrow2-Legomountain14
execute if entity @e[tag=!arrow1-Legomountain14] run execute if entity @e[tag=!arrow2-Legomountain14] run execute if entity @e[tag=between-legomountain14] run tag @e[tag=between-legomountain14] add arrow1-Legomountain14
execute if entity @e[tag=arrow1-Legomountain14,tag=between-legomountain14,tag=!arrow2-Legomountain14] run tag @e[tag=between-legomountain14,tag=!arrow2-Legomountain14] remove between-legomountain14
