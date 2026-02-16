# 룩 선택
scoreboard players set @s chess.temp 5
tag @s add placing_rook
tellraw @s ["",{"text":"룩을 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
