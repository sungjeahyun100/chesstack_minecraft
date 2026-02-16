# 비숍 선택  
scoreboard players set @s chess.temp 3
tag @s add placing_bishop
tellraw @s ["",{"text":"비숍을 선택했습니다. 배치할 칸을 우클릭하세요.","color":"green"}]
