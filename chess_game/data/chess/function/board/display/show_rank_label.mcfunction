# 랭크 라벨 표시 (1-8)
# a파일에만 표시

execute if score @s chess.rank matches 0 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"1\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 1 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"2\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 2 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"3\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 3 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"4\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 4 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"5\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 5 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"6\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 6 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"7\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
execute if score @s chess.rank matches 7 run summon text_display ~-0.5 ~0.1 ~1 {text:"{\"text\":\"8\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[0.5f,0.5f,0.5f]},Tags:["chess_label"]}
