# 승리 조건 확인
# 상대의 로얄 피스를 잡으면 승리

# 백의 로얄 피스가 없으면 흑 승리
execute unless entity @e[tag=chess_piece,tag=white,nbt={data:{is_royal:1b}}] run function chess:game/win_black

# 흑의 로얄 피스가 없으면 백 승리
execute unless entity @e[tag=chess_piece,tag=black,nbt={data:{is_royal:1b}}] run function chess:game/win_white
