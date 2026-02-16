# 이동 스택 갱신 (기물 점수에 따라)

execute store result score @s chess.score run data get entity @s data.piece_score

# 기본 이동 스택 설정
scoreboard players set @s chess.move 5
execute if score @s chess.score matches 3..5 run scoreboard players set @s chess.move 3
execute if score @s chess.score matches 6..7 run scoreboard players set @s chess.move 2
execute if score @s chess.score matches 8.. run scoreboard players set @s chess.move 1

# 킹의 경우 이동 스택 3
execute if entity @s[tag=king] run scoreboard players set @s chess.move 3

execute store result entity @s data.move_stack int 1 run scoreboard players get @s chess.move
