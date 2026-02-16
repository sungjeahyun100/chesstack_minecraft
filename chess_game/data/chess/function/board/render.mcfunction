# 보드를 시각적으로 렌더링

# 기존 라벨 제거
kill @e[tag=chess_label]

# 각 칸을 블록으로 표시 (흰색/검은색 체크무늬)
execute as @e[tag=chess_square] at @s run function chess:board/render_square_visual
