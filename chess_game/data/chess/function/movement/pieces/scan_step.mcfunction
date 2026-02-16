# 한 칸씩 스캔
# 재귀적으로 호출됨

# 카운트 증가
scoreboard players add #scan_count chess.temp 1

# 다음 위치 계산
scoreboard players operation #scan_file chess.temp += #dir_file chess.temp
scoreboard players operation #scan_rank chess.temp += #dir_rank chess.temp

# 보드 범위 체크
execute unless score #scan_file chess.temp matches 0..7 run return 0
execute unless score #scan_rank chess.temp matches 0..7 run return 0

# 최대 7칸까지만
execute if score #scan_count chess.temp matches 8.. run return 0

# 해당 칸 찾기
tag @e[tag=chess_square] remove scan_target
execute as @e[tag=chess_square] if score @s chess.file = #scan_file chess.temp if score @s chess.rank = #scan_rank chess.temp run tag @s add scan_target

# 빈 칸이면 이동 가능 표시 + 계속 스캔
execute as @e[tag=scan_target,limit=1] if data entity @s {data:{piece:"none"}} run function chess:board/show_valid_move
execute as @e[tag=scan_target,limit=1] if data entity @s {data:{piece:"none"}} run function chess:movement/pieces/scan_step

# 적 기물이면 공격 가능 표시 + 스캔 중단
execute as @e[tag=scan_target,limit=1] store result score #target_color chess.temp run data get entity @s data.color_id
execute as @e[tag=scan_target,limit=1] if data entity @s {data:{color:"white"}} run scoreboard players set #target_color chess.temp 0
execute as @e[tag=scan_target,limit=1] if data entity @s {data:{color:"black"}} run scoreboard players set #target_color chess.temp 1

execute as @e[tag=scan_target,limit=1] unless score #piece_color chess.temp = #target_color chess.temp unless data entity @s {data:{piece:"none"}} run function chess:board/show_attack_move

# 태그 정리
tag @e[tag=scan_target] remove scan_target
