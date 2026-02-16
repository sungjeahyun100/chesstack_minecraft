# 보드 주변 장식
# 실행자: chess_center

# 보드 테두리 (금 블록)
fill ~-1 ~-1 ~-1 ~22 ~-1 ~-1 gold_block
fill ~-1 ~-1 ~22 ~22 ~-1 ~22 gold_block
fill ~-1 ~-1 ~-1 ~-1 ~-1 ~22 gold_block
fill ~22 ~-1 ~-1 ~22 ~-1 ~22 gold_block

# 코너 장식 (에메랄드 블록)
fill ~-1 ~-1 ~-1 ~-1 ~0 ~-1 emerald_block
fill ~22 ~-1 ~-1 ~22 ~0 ~-1 emerald_block
fill ~-1 ~-1 ~22 ~-1 ~0 ~22 emerald_block
fill ~22 ~-1 ~22 ~22 ~0 ~22 emerald_block

# 게임 타이틀 (text_display)
summon text_display ~10 ~5 ~10 {alignment:"center",text:"{\"text\":\"체스택\",\"color\":\"gold\",\"bold\":true}",billboard:"center",transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["chess_title"],brightness:{sky:15,block:15}}

# 턴 표시판
summon text_display ~10 ~4 ~10 {alignment:"center",text:"{\"text\":\"백 턴\",\"color\":\"white\"}",billboard:"center",transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["chess_turn_display"],brightness:{sky:15,block:15}}

# 포켓 점수 표시판 (백)
summon text_display ~-2 ~3 ~10 {alignment:"center",text:"[\"\",{\"text\":\"백 포켓: \",\"color\":\"white\"},{\"text\":\"39\",\"color\":\"green\"}]",billboard:"center",transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["chess_pocket_white"],brightness:{sky:15,block:15}}

# 포켓 점수 표시판 (흑)
summon text_display ~23 ~3 ~10 {alignment:"center",text:"[\"\",{\"text\":\"흑 포켓: \",\"color\":\"gray\"},{\"text\":\"39\",\"color\":\"green\"}]",billboard:"center",transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Tags:["chess_pocket_black"],brightness:{sky:15,block:15}}
