# 퀸 선택
scoreboard players set @s chess.placing_cost 9
tag @s add placing
tag @s add placing_queen
tellraw @s ["",{"text":"퀸을 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
tellraw @s ["",{"text":"비용: 9점","color":"gray"}]
