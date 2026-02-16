# 백 플레이어 턴 시작

tellraw @a ["",{"text":"백 플레이어의 턴입니다.","color":"white"}]

# 백 기물의 스턴 스택 감소
execute as @e[tag=chess_piece,tag=white] run function chess:turn/decrease_stun

# 백 기물의 이동 스택 갱신
execute as @e[tag=chess_piece,tag=white] run function chess:turn/refresh_move_stack
