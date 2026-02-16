# 체스 보드 설정 (8x8)
# 보드 중심 좌표를 설정합니다

# 기존 보드 엔티티 제거
kill @e[tag=chess_board]
kill @e[tag=chess_label]
kill @e[tag=chess_title]
kill @e[tag=chess_turn_display]
kill @e[tag=chess_pocket_white]
kill @e[tag=chess_pocket_black]
kill @e[tag=piece_icon]

# 보드 마커 엔티티 생성
summon marker 0 64 0 {Tags:["chess_board","chess_center"]}

# 각 칸에 마커 배치 (a1~h8)
# 파일(가로): a=0, b=1, c=2, d=3, e=4, f=5, g=6, h=7
# 랭크(세로): 1=0, 2=1, 3=2, 4=3, 5=4, 6=5, 7=6, 8=7

execute as @e[tag=chess_center] at @s run function chess:board/place_squares

# 보드 장식
execute as @e[tag=chess_center] at @s run function chess:board/decorate
