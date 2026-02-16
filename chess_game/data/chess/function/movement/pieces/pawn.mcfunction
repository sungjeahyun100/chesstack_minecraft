# 폰의 행마법
# 전진 1칸, 대각선 공격

# 현재 칸 찾기
tag @e[tag=chess_square] remove current_square
execute at @s as @e[tag=chess_square,distance=..2,limit=1,sort=nearest] run tag @s add current_square

# 현재 파일/랭크 저장
execute store result score #current_file chess.temp run data get entity @e[tag=current_square,limit=1] data.file
execute store result score #current_rank chess.temp run data get entity @e[tag=current_square,limit=1] data.rank

# 기물 색상 저장
execute if entity @s[tag=white] run scoreboard players set #piece_color chess.temp 0
execute if entity @s[tag=black] run scoreboard players set #piece_color chess.temp 1

# 백 폰: 앞으로(+rank) 이동
execute if entity @s[tag=white] run function chess:movement/pieces/pawn_white

# 흑 폰: 뒤로(-rank) 이동
execute if entity @s[tag=black] run function chess:movement/pieces/pawn_black

# 태그 정리
tag @e[tag=current_square] remove current_square
