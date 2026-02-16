# 칸으로 이동 시도
# 실행자: 클릭한 칸의 chess_square 마커

# 이동 가능한 칸인지 확인
execute unless entity @s[tag=valid_move] unless entity @s[tag=attack_move] run tellraw @p ["",{"text":"이동할 수 없는 칸입니다!","color":"red"}]
execute unless entity @s[tag=valid_move] unless entity @s[tag=attack_move] run function chess:movement/cancel_selection
execute unless entity @s[tag=valid_move] unless entity @s[tag=attack_move] run return 0

# 공격 이동인 경우 - 기물 캡처
execute if entity @s[tag=attack_move] run function chess:movement/execute_capture

# 이동 실행
function chess:movement/execute_move
