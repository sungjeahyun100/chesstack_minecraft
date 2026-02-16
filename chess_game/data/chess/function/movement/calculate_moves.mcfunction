# 이동 가능한 칸 계산
# 실행자: 선택된 기물

# 스턴 스택 확인
execute store result score @s chess.stun run data get entity @s data.stun_stack

# 스턴이 있으면 이동 불가
execute if score @s chess.stun matches 1.. run tellraw @p ["",{"text":"이 기물은 스턴 상태로 이동할 수 없습니다!","color":"red"}]
execute if score @s chess.stun matches 1.. run tag @s remove selected
execute if score @s chess.stun matches 1.. run return 0

# 이동 스택 확인
execute store result score @s chess.move run data get entity @s data.move_stack

# 이동 스택이 0이면 이동 불가
execute if score @s chess.move matches 0 run tellraw @p ["",{"text":"이 기물은 더 이상 이동할 수 없습니다!","color":"red"}]
execute if score @s chess.move matches 0 run tag @s remove selected
execute if score @s chess.move matches 0 run return 0

# 기물 종류에 따라 행마법 실행
execute if entity @s[tag=king] run function chess:movement/pieces/king
execute if entity @s[tag=pawn] run function chess:movement/pieces/pawn
execute if entity @s[tag=knight] run function chess:movement/pieces/knight
execute if entity @s[tag=bishop] run function chess:movement/pieces/bishop
execute if entity @s[tag=rook] run function chess:movement/pieces/rook
execute if entity @s[tag=queen] run function chess:movement/pieces/queen
