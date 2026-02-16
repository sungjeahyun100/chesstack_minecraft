# 킹의 행마법
# 상하좌우 + 대각선 1칸

# 현재 위치 저장
execute store result score @s chess.file run data get entity @s Pos[0]
execute store result score @s chess.rank run data get entity @s Pos[2]

# 8방향 1칸씩 이동 가능한 칸 표시
# (구현 상세는 복잡하므로 일단 기본 틀만)

tellraw @p ["",{"text":"킹의 이동 가능한 칸을 계산합니다.","color":"yellow"}]
