# 기물 선택 시도
# 실행자: 클릭한 기물

# 현재 턴 확인
execute store result score #current_turn_temp chess.temp run scoreboard players get #current_turn chess.game

# 백 턴에 백 기물만, 흑 턴에 흑 기물만 선택 가능
execute if score #current_turn_temp chess.temp matches 0 unless entity @s[tag=white] run tellraw @p ["",{"text":"백 턴에는 백 기물만 선택할 수 있습니다!","color":"red"}]
execute if score #current_turn_temp chess.temp matches 0 unless entity @s[tag=white] run return 0

execute if score #current_turn_temp chess.temp matches 1 unless entity @s[tag=black] run tellraw @p ["",{"text":"흑 턴에는 흑 기물만 선택할 수 있습니다!","color":"red"}]
execute if score #current_turn_temp chess.temp matches 1 unless entity @s[tag=black] run return 0

# 기물 선택
function chess:movement/select_piece
