# 파일 라벨 표시 (a-h)
# 1랭크에만 표시

execute if score @s chess.file matches 0 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"a\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 1 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"b\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 2 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"c\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 3 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"d\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 4 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"e\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 5 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"f\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 6 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"g\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.file matches 7 run summon text_display ~1 ~0.1 ~-0.5 {text:"{\"text\":\"h\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
