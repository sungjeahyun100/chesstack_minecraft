# 각 칸을 렌더링
# 체크무늬 패턴: (file + rank) % 2 == 0이면 흰색, 아니면 검은색

# 스코어보드에 file과 rank 저장
execute store result score @s chess.file run data get entity @s data.file
execute store result score @s chess.rank run data get entity @s data.rank

# 합계 계산
scoreboard players operation @s chess.temp = @s chess.file
scoreboard players operation @s chess.temp += @s chess.rank

# 2로 나눈 나머지 계산
scoreboard players operation @s chess.color = @s chess.temp
scoreboard players operation @s chess.color %= #2 chess.const

# 흰색 칸 (quartz)
execute if score @s chess.color matches 0 run fill ~0 ~-1 ~0 ~2 ~-1 ~2 white_concrete

# 검은색 칸 (black concrete)
execute if score @s chess.color matches 1 run fill ~0 ~-1 ~0 ~2 ~-1 ~2 black_concrete
