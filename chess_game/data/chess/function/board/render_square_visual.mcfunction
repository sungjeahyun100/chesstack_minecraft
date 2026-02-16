# 각 칸을 3D로 시각화
# 체크무늬 패턴 + 테두리

# 스코어보드에 file과 rank 저장
execute store result score @s chess.file run data get entity @s data.file
execute store result score @s chess.rank run data get entity @s data.rank

# 합계 계산
scoreboard players operation @s chess.temp = @s chess.file
scoreboard players operation @s chess.temp += @s chess.rank

# 2로 나눈 나머지 계산
scoreboard players operation @s chess.color = @s chess.temp
scoreboard players operation @s chess.color %= #2 chess.const

# 흰색 칸 (화이트 콘크리트)
execute if score @s chess.color matches 0 run fill ~0 ~-1 ~0 ~2 ~-1 ~2 white_concrete
execute if score @s chess.color matches 0 run fill ~0 ~0 ~0 ~2 ~0 ~2 air

# 검은색 칸 (블랙 콘크리트)
execute if score @s chess.color matches 1 run fill ~0 ~-1 ~0 ~2 ~-1 ~2 black_concrete
execute if score @s chess.color matches 1 run fill ~0 ~0 ~0 ~2 ~0 ~2 air

# 칸 테두리 (미세한 높이로)
execute if score @s chess.color matches 0 run fill ~0 ~-1 ~0 ~0 ~-1 ~2 gray_concrete
execute if score @s chess.color matches 0 run fill ~2 ~-1 ~0 ~2 ~-1 ~2 gray_concrete
execute if score @s chess.color matches 0 run fill ~0 ~-1 ~0 ~2 ~-1 ~0 gray_concrete
execute if score @s chess.color matches 0 run fill ~0 ~-1 ~2 ~2 ~-1 ~2 gray_concrete

execute if score @s chess.color matches 1 run fill ~0 ~-1 ~0 ~0 ~-1 ~2 gray_concrete
execute if score @s chess.color matches 1 run fill ~2 ~-1 ~0 ~2 ~-1 ~2 gray_concrete
execute if score @s chess.color matches 1 run fill ~0 ~-1 ~0 ~2 ~-1 ~0 gray_concrete
execute if score @s chess.color matches 1 run fill ~0 ~-1 ~2 ~2 ~-1 ~2 gray_concrete

# 파일/랭크 표시 (text_display)
execute if score @s chess.rank matches 0 run function chess:board/display/show_file_label
execute if score @s chess.file matches 0 run function chess:board/display/show_rank_label
