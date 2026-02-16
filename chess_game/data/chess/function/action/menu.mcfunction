# 행동 메뉴
# 플레이어가 자신의 턴에 할 수 있는 행동들

# 현재 플레이어 확인
execute if score #current_turn chess.game matches 0 unless entity @s[tag=chess.white] run tellraw @s ["",{"text":"당신의 턴이 아닙니다! (현재: 백 턴)","color":"red"}]
execute if score #current_turn chess.game matches 0 unless entity @s[tag=chess.white] run return 0

execute if score #current_turn chess.game matches 1 unless entity @s[tag=chess.black] run tellraw @s ["",{"text":"당신의 턴이 아닙니다! (현재: 흑 턴)","color":"red"}]
execute if score #current_turn chess.game matches 1 unless entity @s[tag=chess.black] run return 0

tellraw @s ["",{"text":"========== 행동 선택 ==========","color":"gold","bold":true}]
tellraw @s ""

# 1. 착수 (기물 배치)
tellraw @s ["",{"text":"[착수]","color":"green","click_event":{"action":"run_command","command":"/function chess:piece/place/menu"},"hover_event":{"action":"show_text","value":{"text":"포켓에서 기물을 배치합니다"}}}]

# 2. 이동
tellraw @s ["",{"text":"[이동]","color":"aqua","click_event":{"action":"run_command","command":"/function chess:action/move"},"hover_event":{"action":"show_text","value":{"text":"기물을 이동합니다"}}}]

# 3. 계승 (로얄 피스로 만들기)
tellraw @s ["",{"text":"[계승]","color":"light_purple","click_event":{"action":"run_command","command":"/function chess:action/succession"},"hover_event":{"action":"show_text","value":{"text":"기물을 로얄 피스로 만듭니다"}}}]

# 4. 위장 (로얄 피스 위장)
tellraw @s ["",{"text":"[위장]","color":"yellow","click_event":{"action":"run_command","command":"/function chess:action/disguise"},"hover_event":{"action":"show_text","value":{"text":"로얄 피스를 다른 기물로 위장합니다"}}}]

# 5. 스턴 (기물에 스턴 스택 부여)
tellraw @s ["",{"text":"[스턴]","color":"red","click_event":{"action":"run_command","command":"/function chess:action/stun"},"hover_event":{"action":"show_text","value":{"text":"기물에 스턴 스택을 부여합니다"}}}]

tellraw @s ""
tellraw @s ["",{"text":"[턴 종료]","color":"gray","click_event":{"action":"run_command","command":"/function chess:turn/end"},"hover_event":{"action":"show_text","value":{"text":"턴을 종료합니다"}}}]
