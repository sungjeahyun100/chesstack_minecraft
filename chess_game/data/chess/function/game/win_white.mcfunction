# 백 승리
tellraw @a ["",{"text":"=============================","color":"gold","bold":true}]
tellraw @a ["",{"text":"백 플레이어 승리!","color":"white","bold":true}]
tellraw @a ["",{"text":"=============================","color":"gold","bold":true}]

# 게임 종료
scoreboard players set #game_state chess.game 2
