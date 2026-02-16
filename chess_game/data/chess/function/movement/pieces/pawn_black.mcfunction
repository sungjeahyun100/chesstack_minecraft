# 흑 폰의 이동 (아래쪽으로)

# 앞 1칸 이동 (빈 칸만)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp if data entity @s {data:{piece:"none"}} run function chess:board/show_valid_move

# 우측 대각선 공격 (1, -1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players add #target_file chess.temp 1
scoreboard players remove #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp unless data entity @s {data:{piece:"none"}} unless data entity @s {data:{color:"black"}} run function chess:board/show_attack_move

# 좌측 대각선 공격 (-1, -1)
scoreboard players operation #target_file chess.temp = #current_file chess.temp
scoreboard players operation #target_rank chess.temp = #current_rank chess.temp
scoreboard players remove #target_file chess.temp 1
scoreboard players remove #target_rank chess.temp 1
execute if score #target_file chess.temp matches 0..7 if score #target_rank chess.temp matches 0..7 as @e[tag=chess_square] if score @s chess.file = #target_file chess.temp if score @s chess.rank = #target_rank chess.temp unless data entity @s {data:{piece:"none"}} unless data entity @s {data:{color:"black"}} run function chess:board/show_attack_move
