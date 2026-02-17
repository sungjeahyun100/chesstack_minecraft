# 레이캐스트 단계
# 최대 30블록까지 탐색

# 디버그: 레이캐스트 경로 표시 (모든 placing 플레이어에게)
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=placing]

# 현재 위치에서 가까운 chess_square 찾기 (1.5블록 반경)
execute if entity @e[tag=chess_square,distance=..1.5] run tellraw @a[tag=placing] ["",{"text":"칸 발견!","color":"green"}]
execute if entity @e[tag=chess_square,distance=..1.5] as @e[tag=chess_square,limit=1,sort=nearest] at @s run function chess:piece/place/place_piece
execute if entity @e[tag=chess_square,distance=..1.5] run return 1

# 다음 단계로 진행 (0.5블록씩) - 30블록까지
execute positioned ^ ^ ^0.5 if entity @s[distance=..30] run function chess:piece/place/raycast_step
