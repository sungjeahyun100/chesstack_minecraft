# 보드 칸 클릭 감지
# 플레이어가 바라보는 칸을 찾아 처리

# 배치 모드인 경우
execute if entity @s[tag=placing] anchored eyes positioned ^ ^ ^ run function chess:piece/place/raycast_step
