# 보드 위치 표시 (디버깅용)

execute as @e[tag=chess_square] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force @a

tellraw @a [{"text":"보드 칸 위치를 표시했습니다.","color":"green"}]
