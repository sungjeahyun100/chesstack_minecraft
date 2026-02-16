# 게임 시작 함수

# 보드 설정
function chess:board/setup

# 보드 렌더링
function chess:board/render

# 플레이어 초기화
function chess:game/init_players

# 초기 킹 배치
function chess:game/place_initial_kings

# 기물 점수 데이터 로드
function chess:piece/data

# 첫 턴 시작 (백부터)
scoreboard players set #current_turn chess.game 0
function chess:turn/start

tellraw @a ["",{"text":"체스택 게임이 시작되었습니다!","color":"green","bold":true}]
