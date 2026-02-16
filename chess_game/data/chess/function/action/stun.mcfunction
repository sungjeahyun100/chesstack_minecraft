# 스턴 행동 (스턴 스택 부여)
tellraw @s ["",{"text":"스턴을 부여할 기물을 선택하세요.","color":"red"}]
tellraw @s ["",{"text":"아군 기물: 1~3 스택, 적 기물: 1 스택","color":"gray"}]
tag @s add selecting_stun
