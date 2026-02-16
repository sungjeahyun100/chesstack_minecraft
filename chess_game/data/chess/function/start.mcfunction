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

# 게임 상태 활성화
scoreboard players set #game_state chess.game 1

# 플레이어에게 당근 낚싯대 제공 (클릭용)
give @a[tag=chess.white] minecraft:carrot_on_a_stick[custom_name='{"text":"체스 클릭 도구","color":"gold","italic":false}',lore=['{"text":"우클릭하여 칸을 선택하세요","color":"gray","italic":false}']]
give @a[tag=chess.black] minecraft:carrot_on_a_stick[custom_name='{"text":"체스 클릭 도구","color":"gold","italic":false}',lore=['{"text":"우클릭하여 칸을 선택하세요","color":"gray","italic":false}']]

tellraw @a ["",{"text":"========================================","color":"gold"}]
tellraw @a ["",{"text":"    체스택 게임 시작!","color":"aqua","bold":true}]
tellraw @a ["",{"text":"========================================","color":"gold"}]
tellraw @a ""
tellraw @a ["",{"text":"✓ ","color":"green"},{"text":"보드가 설정되었습니다.","color":"white"}]
tellraw @a ["",{"text":"✓ ","color":"green"},{"text":"초기 킹이 배치되었습니다.","color":"white"}]
tellraw @a ["",{"text":"✓ ","color":"green"},{"text":"포켓 점수: 39점","color":"white"}]
tellraw @a ""
tellraw @a ["",{"text":"» ","color":"yellow"},{"text":"'/function chess:action/menu'로 행동을 선택하세요.","color":"white"}]
tellraw @a ["",{"text":"» ","color":"yellow"},{"text":"당근 낚싯대를 우클릭하여 칸을 선택합니다.","color":"white"}]
tellraw @a ["",{"text":"» ","color":"yellow"},{"text":"스니크를 누르면 배치를 취소합니다.","color":"white"}]
tellraw @a ""
