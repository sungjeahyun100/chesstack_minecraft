# 초기화 함수 (게임 처음 로드 시)

# 스코어보드 생성
scoreboard objectives add chess.game dummy "체스택 게임"
scoreboard objectives add chess.file dummy "파일"
scoreboard objectives add chess.rank dummy "랭크"
scoreboard objectives add chess.temp dummy "임시"
scoreboard objectives add chess.color dummy "칸 색"
scoreboard objectives add chess.const dummy "상수"
scoreboard objectives add chess.stun dummy "스턴 스택"
scoreboard objectives add chess.move dummy "이동 스택"
scoreboard objectives add chess.score dummy "기물 점수"
scoreboard objectives add chess.piece_score dummy "기물 점수표"
scoreboard objectives add chess.pocket dummy "포켓 점수"
scoreboard objectives add chess.click minecraft.used:minecraft.carrot_on_a_stick "클릭 감지"

# 상수 설정
scoreboard players set #2 chess.const 2
scoreboard players set #39 chess.const 39
scoreboard players set #tick_counter chess.game 0

tellraw @a ["",{"text":"체스택 데이터팩이 로드되었습니다!","color":"gold"}]
tellraw @a ["",{"text":"'/function chess:start'로 게임을 시작하세요.","color":"yellow"}]
tellraw @a ["",{"text":"시각적 3D 보드가 구현되어 있습니다!","color":"aqua"}]


