# 게임 리셋

# 구조물 제거 (블록)
function chess:board/clear_structure

# 모든 기물 제거
kill @e[tag=chess_piece]
kill @e[tag=chess_square]
kill @e[tag=chess_board]
kill @e[tag=chess_label]
kill @e[tag=chess_title]
kill @e[tag=chess_turn_display]
kill @e[tag=chess_pocket_white]
kill @e[tag=chess_pocket_black]
kill @e[tag=piece_icon]

# 스코어보드 리셋
scoreboard players reset @a chess.pocket
scoreboard players reset #current_turn chess.game
scoreboard players reset #game_state chess.game

# 태그 제거
tag @a remove chess.white
tag @a remove chess.black

tellraw @a ["",{"text":"게임이 리셋되었습니다.","color":"red"}]

