# 모든 강조 효과 제거

# 태그 제거
tag @e[tag=selected_square] remove selected_square
tag @e[tag=valid_move] remove valid_move
tag @e[tag=attack_move] remove attack_move

# 발광 블록 제거
execute as @e[tag=chess_square] at @s run fill ~0 ~0 ~0 ~2 ~0 ~2 air replace light
