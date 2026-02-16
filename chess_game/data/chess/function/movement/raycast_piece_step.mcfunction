# 레이캐스트로 기물 찾기
# 최대 15블록까지 탐색

# 현재 위치에 chess_piece가 있는지 확인 (3x3 영역)
execute positioned ~-1.5 ~-1 ~-1.5 if entity @e[tag=chess_piece,dx=3,dy=2,dz=3,limit=1] positioned ~-1.5 ~-1 ~-1.5 as @e[tag=chess_piece,dx=3,dy=2,dz=3,limit=1,sort=nearest] at @s run function chess:movement/try_select_piece

# 다음 단계로 진행 - chess_piece를 찾지 못한 경우
execute unless entity @e[tag=chess_piece,distance=..3] positioned ^ ^ ^0.3 if entity @s[distance=..15] run function chess:movement/raycast_piece_step
