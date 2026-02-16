# 기물 배치 시스템
# 플레이어가 포켓에서 기물을 선택하여 배치

# 배치 메뉴 표시
tellraw @s ["",{"text":"========== 기물 배치 ==========","color":"gold","bold":true}]
tellraw @s ["",{"text":"배치할 기물을 선택하세요:","color":"yellow"}]
tellraw @s ""

# 폰 (1점)
tellraw @s ["",{"text":"[폰]","color":"white","click_event":{"action":"run_command","command":"/function chess:piece/place/select_pawn"},"hover_event":{"action":"show_text","value":{"text":"1점 - 클릭하여 선택"}}},{"text":" (1점)","color":"gray"}]

# 나이트 (3점)
tellraw @s ["",{"text":"[나이트]","color":"white","click_event":{"action":"run_command","command":"/function chess:piece/place/select_knight"},"hover_event":{"action":"show_text","value":{"text":"3점 - 클릭하여 선택"}}},{"text":" (3점)","color":"gray"}]

# 비숍 (3점)
tellraw @s ["",{"text":"[비숍]","color":"white","click_event":{"action":"run_command","command":"/function chess:piece/place/select_bishop"},"hover_event":{"action":"show_text","value":{"text":"3점 - 클릭하여 선택"}}},{"text":" (3점)","color":"gray"}]

# 룩 (5점)
tellraw @s ["",{"text":"[룩]","color":"white","click_event":{"action":"run_command","command":"/function chess:piece/place/select_rook"},"hover_event":{"action":"show_text","value":{"text":"5점 - 클릭하여 선택"}}},{"text":" (5점)","color":"gray"}]

# 퀸 (9점)
tellraw @s ["",{"text":"[퀸]","color":"white","click_event":{"action":"run_command","command":"/function chess:piece/place/select_queen"},"hover_event":{"action":"show_text","value":{"text":"9점 - 클릭하여 선택"}}},{"text":" (9점)","color":"gray"}]

tellraw @s ""
tellraw @s ["",{"text":"남은 포켓 점수: ","color":"yellow"},{"score":{"name":"@s","objective":"chess.pocket"},"color":"green"}]
