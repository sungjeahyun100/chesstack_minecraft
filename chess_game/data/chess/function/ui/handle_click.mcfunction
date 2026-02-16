# UI 클릭 처리

# 배치 모드인 경우
execute if entity @s[tag=placing] run function chess:piece/place/detect_square

# 기물이 선택된 상태인 경우 (이동할 칸 클릭)
execute if entity @e[tag=selected] run function chess:movement/detect_move_square

# 기물 선택 (아직 선택된 기물이 없는 경우)
execute unless entity @e[tag=selected] unless entity @s[tag=placing] run function chess:movement/detect_piece_click
