# 목표 칸이 이동 가능한지 확인
# 실행자: 목표 칸의 chess_square 마커

# 칸이 비어있으면 이동 가능
execute if data entity @s {data:{piece:"none"}} run function chess:board/show_valid_move

# 적 기물이 있으면 공격 가능
execute store result score #target_color chess.temp run data get entity @s data.color_id
execute if data entity @s {data:{color:"white"}} run scoreboard players set #target_color chess.temp 0
execute if data entity @s {data:{color:"black"}} run scoreboard players set #target_color chess.temp 1

# 적 기물인 경우
execute unless score #piece_color chess.temp = #target_color chess.temp unless data entity @s {data:{piece:"none"}} run function chess:board/show_attack_move
