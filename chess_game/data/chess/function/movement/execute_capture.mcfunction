# 기물 캡처 실행
# 실행자: 목표 칸 (attack_move 태그가 있는 칸)

# 해당 칸에 있는 적 기물 찾기
execute at @s as @e[tag=chess_piece,distance=..2] unless entity @s[tag=selected] run tag @s add captured

# 캡처된 기물 처리
execute as @e[tag=captured] run function chess:movement/capture
