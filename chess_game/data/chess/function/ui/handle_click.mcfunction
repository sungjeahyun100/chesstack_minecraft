# UI 클릭 처리

# 디버그: 클릭 감지 확인
tellraw @s[tag=debug] {"text":"클릭 감지됨","color":"gray"}

# 배치 모드인 경우
execute if entity @s[tag=placing] run tellraw @s[tag=debug] {"text":"배치 모드 확인됨","color":"gray"}
execute if entity @s[tag=placing] run function chess:piece/place/detect_square

# 기물이 선택된 상태인 경우 (이동할 칸 클릭)
execute if entity @e[tag=selected] run function chess:movement/detect_move_square

# 기물 선택 (아직 선택된 기물이 없는 경우)
execute unless entity @e[tag=selected] unless entity @s[tag=placing] run function chess:movement/detect_piece_click
