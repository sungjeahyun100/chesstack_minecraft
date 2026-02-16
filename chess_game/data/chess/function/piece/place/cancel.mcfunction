# 기물 배치 취소
# 실행자: 배치 모드의 플레이어

tellraw @s ["",{"text":"기물 배치를 취소했습니다.","color":"yellow"}]

function chess:piece/place/clear_placing_mode
