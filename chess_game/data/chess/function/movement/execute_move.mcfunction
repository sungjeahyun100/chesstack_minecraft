# 실제 이동 처리
# 실행자: 이동할 칸의 chess_square 마커

# 선택된 기물 이동
execute as @e[tag=selected,limit=1] run function chess:movement/move_piece_to_target

# 기물의 이동 스택 감소
execute as @e[tag=selected,limit=1] run scoreboard players remove @s chess.move 1
execute as @e[tag=selected,limit=1] store result entity @s data.move_stack int 1 run scoreboard players get @s chess.move

# 이전 칸 데이터 초기화 (빈 칸으로)
execute as @e[tag=from_square] run data modify entity @s data.piece set value "none"
execute as @e[tag=from_square] run data remove entity @s data.color

# 새 칸 데이터 설정
execute as @e[tag=selected,limit=1] if entity @s[tag=white] run data modify entity @e[tag=move_target,limit=1] data.color set value "white"
execute as @e[tag=selected,limit=1] if entity @s[tag=black] run data modify entity @e[tag=move_target,limit=1] data.color set value "black"

execute as @e[tag=selected,limit=1] if entity @s[tag=king] run data modify entity @e[tag=move_target,limit=1] data.piece set value "king"
execute as @e[tag=selected,limit=1] if entity @s[tag=queen] run data modify entity @e[tag=move_target,limit=1] data.piece set value "queen"
execute as @e[tag=selected,limit=1] if entity @s[tag=rook] run data modify entity @e[tag=move_target,limit=1] data.piece set value "rook"
execute as @e[tag=selected,limit=1] if entity @s[tag=bishop] run data modify entity @e[tag=move_target,limit=1] data.piece set value "bishop"
execute as @e[tag=selected,limit=1] if entity @s[tag=knight] run data modify entity @e[tag=move_target,limit=1] data.piece set value "knight"
execute as @e[tag=selected,limit=1] if entity @s[tag=pawn] run data modify entity @e[tag=move_target,limit=1] data.piece set value "pawn"

# 이동 메시지
tellraw @a ["",{"selector":"@e[tag=selected]"},{"text":" 이동!","color":"green"}]
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.5 1.5

# 이동 스택이 0이 되면 턴 종료 확인
execute as @e[tag=selected,limit=1] if score @s chess.move matches 0 run tellraw @p ["",{"text":"이동 스택이 모두 소진되었습니다.","color":"yellow"}]

# 파티클 효과
particle minecraft:portal ~ ~0.5 ~ 0.3 0.3 0.3 0 20 normal

# 선택 해제
function chess:movement/cancel_selection

