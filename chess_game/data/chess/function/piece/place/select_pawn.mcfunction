# 폰 선택
scoreboard players set @s chess.placing_cost 1
tag @s add placing
tag @s add placing_pawn
tellraw @s ["",{"text":"폰을 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
tellraw @s ["",{"text":"비용: 1점","color":"gray"}]
