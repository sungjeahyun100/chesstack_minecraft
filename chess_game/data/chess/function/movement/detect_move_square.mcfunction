# 이동할 칸 감지
# 플레이어가 이동 가능한 칸을 클릭

# 레이캐스트로 칸 찾기
execute as @p anchored eyes positioned ^ ^ ^ run function chess:movement/raycast_move_step
