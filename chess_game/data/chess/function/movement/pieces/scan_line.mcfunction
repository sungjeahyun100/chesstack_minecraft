# 한 방향으로 계속 스캔 (반복)
# #dir_file, #dir_rank: 방향
# #current_file, #current_rank: 시작 위치

# 최대 7칸까지 스캔
scoreboard players set #scan_count chess.temp 0
scoreboard players operation #scan_file chess.temp = #current_file chess.temp
scoreboard players operation #scan_rank chess.temp = #current_rank chess.temp

# 반복 스캔 시작
function chess:movement/pieces/scan_step
