# 나이트의 행마법
# L자 모양 8방향 이동

# 현재 칸 찾기
tag @e[tag=chess_square] remove current_square
execute at @s as @e[tag=chess_square,distance=..2,limit=1,sort=nearest] run tag @s add current_square

# 현재 파일/랭크 저장
execute store result score #current_file chess.temp run data get entity @e[tag=current_square,limit=1] data.file
execute store result score #current_rank chess.temp run data get entity @e[tag=current_square,limit=1] data.rank

# 기물 색상 저장
execute if entity @s[tag=white] run scoreboard players set #piece_color chess.temp 0
execute if entity @s[tag=black] run scoreboard players set #piece_color chess.temp 1

# 8방향 L자 이동

# (1, 2)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players add #target_file chess.temp 1
scoreboard players add #target_rank chess.temp 2
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (2, 1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players add #target_file chess.temp 2
scoreboard players add #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (1, -2)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players add #target_file chess.temp 1
scoreboard players remove #target_rank chess.temp 2
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (2, -1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players add #target_file chess.temp 2
scoreboard players remove #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (-1, 2)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_file chess.temp 1
scoreboard players add #target_rank chess.temp 2
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (-2, 1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_file chess.temp 2
scoreboard players add #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (-1, -2)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_file chess.temp 1
scoreboard players remove #target_rank chess.temp 2
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# (-2, -1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_file chess.temp 2
scoreboard players remove #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp run function chess:movement/pieces/check_target

# 태그 정리
tag @e[tag=current_square] remove current_square
