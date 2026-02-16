# Chessembly 인터프리터 메인
# 기물의 Chessembly 코드를 파싱하고 실행

# 실행자: 선택된 기물

# 기물의 Chessembly 코드 가져오기
# data.chessembly에 저장된 코드를 파싱

# 초기 상태 설정
scoreboard players set #anchor_x chess.temp 0
scoreboard players set #anchor_y chess.temp 0
scoreboard players set #result chess.temp 1

# 코드 실행 (예시: 킹의 경우)
# take-move(1, 0); take-move(-1, 0); take-move(0, 1); take-move(0, -1);
# take-move(1, 1); take-move(-1, 1); take-move(1, -1); take-move(-1, -1);

tellraw @p ["",{"text":"Chessembly 인터프리터 실행 중...","color":"yellow"}]
