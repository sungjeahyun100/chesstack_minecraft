# 배치 모드 종료
# 실행자: 배치를 완료한 플레이어

tag @s remove placing
tag @s remove placing_pawn
tag @s remove placing_knight
tag @s remove placing_bishop
tag @s remove placing_rook
tag @s remove placing_queen
scoreboard players set @s chess.placing_cost 0
