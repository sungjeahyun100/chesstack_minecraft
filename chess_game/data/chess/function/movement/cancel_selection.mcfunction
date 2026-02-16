# 선택 취소
# 모든 이동 관련 태그 제거

tag @e[tag=selected] remove selected
tag @e[tag=valid_move] remove valid_move
tag @e[tag=attack_move] remove attack_move
tag @e[tag=from_square] remove from_square
tag @e[tag=move_target] remove move_target
tag @e[tag=current_square] remove current_square

function chess:board/clear_highlights
