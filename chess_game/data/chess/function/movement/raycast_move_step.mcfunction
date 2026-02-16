# 레이캐스트로 이동 칸 찾기
# 최대 15블록까지 탐색

# 현재 위치에 chess_square가 있는지 확인 (3x3 영역)
execute positioned ~-1.5 ~-1 ~-1.5 if entity @e[tag=chess_square,dx=3,dy=2,dz=3,limit=1] positioned ~-1.5 ~-1 ~-1.5 as @e[tag=chess_square,dx=3,dy=2,dz=3,limit=1,sort=nearest] at @s run function chess:movement/try_move_to_square

# 다음 단계로 진행
execute unless entity @e[tag=chess_square,distance=..3] positioned ^ ^ ^0.3 if entity @s[distance=..15] run function chess:movement/raycast_move_step
