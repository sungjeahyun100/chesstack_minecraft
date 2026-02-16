# 플레이어가 서 있는 위치에 체스 보드 설정
# 실행자: 플레이어

# 기존 보드 엔티티 제거
kill @e[tag=chess_board]
kill @e[tag=chess_label]
kill @e[tag=chess_title]
kill @e[tag=chess_turn_display]
kill @e[tag=chess_pocket_white]
kill @e[tag=chess_pocket_black]
kill @e[tag=piece_icon]

# 플레이어 위치에 보드 마커 엔티티 생성
summon marker ~3 ~ ~3 {Tags:["chess_board","chess_center"]}

# 각 칸에 마커 배치
execute as @e[tag=chess_center] at @s run function chess:board/place_squares

# 보드 장식
execute as @e[tag=chess_center] at @s run function chess:board/decorate

tellraw @s ["",{"text":"현재 위치에 체스 보드가 생성되었습니다.","color":"green"}]
