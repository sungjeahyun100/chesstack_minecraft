# UI 메인 메뉴
# 플레이어가 사용할 수 있는 액션 메뉴

tellraw @s ["",{"text":"========== 체스택 메뉴 ==========","color":"gold","bold":true}]
tellraw @s ""

# 기물 배치
tellraw @s ["",{"text":"[기물 배치]","color":"green","click_event":{"action":"run_command","command":"/function chess:piece/place/menu"},"hover_event":{"action":"show_text","value":{"text":"포켓에서 기물을 배치합니다"}}}]

# 턴 종료
tellraw @s ["",{"text":"[턴 종료]","color":"yellow","click_event":{"action":"run_command","command":"/function chess:turn/end"},"hover_event":{"action":"show_text","value":{"text":"현재 턴을 종료합니다"}}}]

# 게임 상태
tellraw @s ""
tellraw @s ["",{"text":"현재 턴: ","color":"yellow"},{"text":"백","color":"white"}]
execute if score #current_turn chess.game matches 1 run tellraw @s ["",{"text":"현재 턴: ","color":"yellow"},{"text":"흑","color":"gray"}]
tellraw @s ["",{"text":"포켓 점수: ","color":"yellow"},{"score":{"name":"@s","objective":"chess.pocket"},"color":"green"}]
