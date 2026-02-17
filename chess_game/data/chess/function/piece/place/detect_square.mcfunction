# 보드 칸 클릭 감지
# 플레이어가 바라보는 칸을 찾아 처리

# 디버그: 레이캐스트 시작
tellraw @s[tag=debug] {"text":"레이캐스트 시작","color":"gray"}

# 디버그: chess_square 개수 확인
execute store result score #square_count chess.temp if entity @e[tag=chess_square]
tellraw @s[tag=debug] ["",{"text":"chess_square 개수: ","color":"yellow"},{"score":{"name":"#square_count","objective":"chess.temp"},"color":"green"}]

# 디버그: 현재 위치 표시
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0 5 force @a[tag=debug]

# 레이캐스트로 칸 찾기 (이미 handle_click에서 placing 태그 확인함)
execute anchored eyes positioned ^ ^ ^ run function chess:piece/place/raycast_step
