# 턴 종료
# 턴을 교체합니다

execute if score #current_turn chess.game matches 0 run scoreboard players set #current_turn chess.game 1
execute if score #current_turn chess.game matches 1 run scoreboard players set #current_turn chess.game 0

# 다음 턴 시작
function chess:turn/start
