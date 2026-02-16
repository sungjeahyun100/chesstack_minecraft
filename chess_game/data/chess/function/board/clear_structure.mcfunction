# 체스 보드 구조물 제거
# 보드의 모든 블록을 제거합니다

# 보드 중심 위치에서 실행
execute as @e[tag=chess_center] at @s run function chess:board/clear_structure_blocks

tellraw @a ["",{"text":"체스 보드 구조물이 제거되었습니다.","color":"yellow"}]
