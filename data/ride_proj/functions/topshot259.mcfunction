kill @e[type=arrow,tag=arrow1-topshot259,nbt={inGround:1b}]

execute if entity @e[name="topshot259",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as topshot259 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,nbt={Owner: [I; -1350300206, 2091074257, -1911937549, 440535073]}] add arrow1-topshot259
execute if entity @e[name="topshot259",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as topshot259 run ride topshot259 mount @e[type=minecraft:arrow,sort=nearest,limit=1,tag=arrow1-topshot259,nbt={Owner: [I; -1350300206, 2091074257, -1911937549, 440535073]}]
execute if entity @e[name="topshot259",nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'{"text":"Self Slingshot"}'}}}}] run execute as topshot259 run tag @e[type=minecraft:arrow,sort=nearest,limit=1,tag=!arrow1-topshot259] add arrow2-topshot259
execute if entity @e[tag=arrow1-topshot259] run execute if entity @e[tag=arrow2-topshot259] run kill @e[tag=arrow1-topshot259]
execute if entity @e[tag=!arrow1-topshot259] run execute if entity @e[tag=arrow2-topshot259] run tag @e[tag=arrow2-topshot259] add between-topshot259
execute if entity @e[tag=!arrow1-topshot259] run execute if entity @e[tag=arrow2-topshot259,tag=between-topshot259] run tag @e[tag=between-topshot259,tag=arrow2-topshot259] remove arrow2-topshot259
execute if entity @e[tag=!arrow1-topshot259] run execute if entity @e[tag=!arrow2-topshot259] run execute if entity @e[tag=between-topshot259] run tag @e[tag=between-topshot259] add arrow1-topshot259
execute if entity @e[tag=arrow1-topshot259,tag=between-topshot259,tag=!arrow2-topshot259] run tag @e[tag=between-topshot259,tag=!arrow2-topshot259] remove between-topshot259
