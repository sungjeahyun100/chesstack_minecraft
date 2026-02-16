# 게임 진행 중 틱

# 기물 위에 이름표 표시 (항상 보이게)
execute as @e[tag=chess_piece] at @s run data merge entity @s {CustomNameVisible:1b}

# 기물 스택 정보 업데이트 (디스플레이용)
execute as @e[tag=chess_piece] run function chess:piece/update_display

# 기물 시각화 (아이콘 표시) - 5틱마다
execute if score #tick_counter chess.game matches 0 as @e[tag=chess_piece] run function chess:piece/visualize

# 배치 모드 플레이어에게 힌트 표시
execute as @a[tag=placing] at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force @s

# 배치 모드 취소 (스니크로 취소)
execute as @a[tag=placing,scores={chess.sneak=1..}] run function chess:piece/place/cancel
scoreboard players set @a[scores={chess.sneak=1..}] chess.sneak 0

# 이동 가능한 칸 파티클 표시
execute as @e[tag=valid_move] at @s run function chess:board/show_valid_move
execute as @e[tag=attack_move] at @s run function chess:board/show_attack_move

# 턴 및 포켓 표시 업데이트
function chess:board/update_turn_display
function chess:board/update_pocket_display

# 승리 조건 확인
function chess:game/check_win

# 틱 카운터 증가
scoreboard players add #tick_counter chess.game 1
execute if score #tick_counter chess.game matches 20.. run scoreboard players set #tick_counter chess.game 0

# 클릭 감지 처리
execute as @a[scores={chess.click=1..}] run function chess:ui/handle_click
scoreboard players set @a chess.click 0
