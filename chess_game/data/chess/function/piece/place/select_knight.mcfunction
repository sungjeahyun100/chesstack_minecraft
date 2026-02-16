# 나이트 선택
scoreboard players set @s chess.temp 3
tag @s add placing_knight
tellraw @s ["",{"text":"나이트를 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
