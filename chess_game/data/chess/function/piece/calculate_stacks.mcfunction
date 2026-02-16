# 기물의 초기 스택 계산
# 실행자: 방금 배치된 기물

# 기물 점수 가져오기
execute store result score @s chess.score run data get entity @s data.piece_score

# 스턴 스택 = 기물 점수
execute store result score @s chess.stun run data get entity @s data.piece_score
execute store result entity @s data.stun_stack int 1 run scoreboard players get @s chess.stun

# 이동 스택 계산
scoreboard players set @s chess.move 5
execute if score @s chess.score matches 3..5 run scoreboard players set @s chess.move 3
execute if score @s chess.score matches 6..7 run scoreboard players set @s chess.move 2
execute if score @s chess.score matches 8.. run scoreboard players set @s chess.move 1

# 킹의 경우 초기 이동 스택 3
execute if entity @s[tag=king] run scoreboard players set @s chess.move 3

execute store result entity @s data.move_stack int 1 run scoreboard players get @s chess.move
