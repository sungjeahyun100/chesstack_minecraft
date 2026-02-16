# 기물 시각화 개선
# 실행자: 기물 엔티티

# 기물 머리 위에 아이콘 표시 (item_display 사용)
# 이미 있으면 제거하고 새로 생성
execute at @s run kill @e[type=item_display,tag=piece_icon,distance=..0.5]

# 백 기물
execute if entity @s[tag=white,tag=king] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_King"}}},billboard:"center",Tags:["piece_icon","white_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=white,tag=queen] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:nether_star",count:1},billboard:"center",Tags:["piece_icon","white_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=white,tag=rook] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:anvil",count:1},billboard:"center",Tags:["piece_icon","white_icon"],transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

execute if entity @s[tag=white,tag=bishop] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:end_rod",count:1},billboard:"center",Tags:["piece_icon","white_icon"],transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

execute if entity @s[tag=white,tag=knight] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Horse"}}},billboard:"center",Tags:["piece_icon","white_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=white,tag=pawn] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:iron_ingot",count:1},billboard:"center",Tags:["piece_icon","white_icon"],transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

# 흑 기물
execute if entity @s[tag=black,tag=king] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:wither_skeleton_skull",count:1},billboard:"center",Tags:["piece_icon","black_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=black,tag=queen] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:nether_star",count:1},billboard:"center",Tags:["piece_icon","black_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=black,tag=rook] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:anvil",count:1},billboard:"center",Tags:["piece_icon","black_icon"],transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

execute if entity @s[tag=black,tag=bishop] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:end_rod",count:1},billboard:"center",Tags:["piece_icon","black_icon"],transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

execute if entity @s[tag=black,tag=knight] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_ZombieHorse"}}},billboard:"center",Tags:["piece_icon","black_icon"],brightness:{sky:15,block:15}}

execute if entity @s[tag=black,tag=pawn] at @s run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:coal",count:1},billboard:"center",Tags:["piece_icon","black_icon"],transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},brightness:{sky:15,block:15}}

# 로얄 피스는 발광 효과
execute if entity @s[nbt={data:{is_royal:1b}}] at @s run effect give @e[type=item_display,tag=piece_icon,distance=..0.5,limit=1] glowing 1 0 true
