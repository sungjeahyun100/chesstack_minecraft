# 흑 플레이어 턴 시작

tellraw @a ["",{"text":"흑 플레이어의 턴입니다.","color":"gray"}]

# 흑 기물의 스턴 스택 감소
execute as @e[tag=chess_piece,tag=black] run function chess:turn/decrease_stun

# 흑 기물의 이동 스택 갱신
execute as @e[tag=chess_piece,tag=black] run function chess:turn/refresh_move_stack
