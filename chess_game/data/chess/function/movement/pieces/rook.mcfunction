# 룩의 행마법
# 상하좌우 4방향으로 계속 이동

# 현재 칸 찾기
tag @e[tag=chess_square] remove current_square
execute at @s as @e[tag=chess_square,distance=..2,limit=1,sort=nearest] run tag @s add current_square

# 현재 파일/랭크 저장
execute store result score #current_file chess.temp run data get entity @e[tag=current_square,limit=1] data.file
execute store result score #current_rank chess.temp run data get entity @e[tag=current_square,limit=1] data.rank

# 기물 색상 저장
execute if entity @s[tag=white] run scoreboard players set #piece_color chess.temp 0
execute if entity @s[tag=black] run scoreboard players set #piece_color chess.temp 1

# 4개 직선 방향으로 반복 이동

# 우측 (1, 0)
scoreboard players set #dir_file chess.temp 1
scoreboard players set #dir_rank chess.temp 0
function chess:movement/pieces/scan_line

# 좌측 (-1, 0)
scoreboard players set #dir_file chess.temp -1
scoreboard players set #dir_rank chess.temp 0
function chess:movement/pieces/scan_line

# 위 (0, 1)
scoreboard players set #dir_file chess.temp 0
scoreboard players set #dir_rank chess.temp 1
function chess:movement/pieces/scan_line

# 아래 (0, -1)
scoreboard players set #dir_file chess.temp 0
scoreboard players set #dir_rank chess.temp -1
function chess:movement/pieces/scan_line

# 태그 정리
tag @e[tag=current_square] remove current_square
