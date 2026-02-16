# 기물 이동 시스템
# 기물을 클릭하면 이동 가능한 칸을 표시

# 선택한 기물 저장
tag @s add selected

# 이동 가능한 칸 계산
function chess:movement/calculate_moves

tellraw @p ["",{"text":"기물을 선택했습니다. 이동할 칸을 클릭하세요.","color":"green"}]
