# 턴 시작
# 현재 플레이어의 모든 기물의 이동 스택 갱신 및 스턴 스택 감소

# 현재 턴 플레이어 확인 (0: 백, 1: 흑)
execute if score #current_turn chess.game matches 0 run function chess:turn/start_white
execute if score #current_turn chess.game matches 1 run function chess:turn/start_black
