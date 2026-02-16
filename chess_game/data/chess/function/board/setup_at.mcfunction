# 특정 좌표에 체스 보드 설정
# 매크로로 좌표를 받습니다
# 사용법: /function chess:board/setup_at {x:0,y:64,z:0}

# 기존 보드 엔티티 제거
kill @e[tag=chess_board]
kill @e[tag=chess_label]
kill @e[tag=chess_title]
kill @e[tag=chess_turn_display]
kill @e[tag=chess_pocket_white]
kill @e[tag=chess_pocket_black]
kill @e[tag=piece_icon]

# 지정된 좌표에 보드 마커 엔티티 생성
$summon marker $(x) $(y) $(z) {Tags:["chess_board","chess_center"]}

# 각 칸에 마커 배치
execute as @e[tag=chess_center] at @s run function chess:board/place_squares

# 보드 장식
execute as @e[tag=chess_center] at @s run function chess:board/decorate

$tellraw @a ["",{"text":"체스 보드가 ($(x), $(y), $(z))에 생성되었습니다.","color":"green"}]
