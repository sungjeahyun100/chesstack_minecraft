# 폰 선택
scoreboard players set @s chess.temp 1
tag @s add placing_pawn
tellraw @s ["",{"text":"폰을 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
