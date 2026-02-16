# 기물을 목표 위치로 이동
# 실행자: 선택된 기물

# 이전 칸 표시 태그
execute at @s as @e[tag=chess_square,distance=..2,limit=1,sort=nearest] run tag @s add from_square

# 목표 칸 표시
tag @e[tag=chess_square] remove move_target
execute as @e[tag=valid_move] run tag @s add move_target
execute as @e[tag=attack_move] run tag @s add move_target

# 목표 칸의 중심으로 텔레포트 (칸 원점 + 1, 0, 1)
execute at @e[tag=move_target,limit=1] run tp @s ~1 ~ ~1

# 이동 파티클
particle minecraft:cloud ~ ~0.5 ~ 0.2 0.3 0.2 0 10 normal

