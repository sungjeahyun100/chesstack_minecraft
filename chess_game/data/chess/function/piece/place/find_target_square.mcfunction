# 플레이어가 바라보는 칸 찾기 (raycast)
# 실행자: 배치 모드의 플레이어

# 레이캐스트로 가장 가까운 chess_square 찾기
execute anchored eyes positioned ^ ^ ^ run function chess:piece/place/raycast_step
