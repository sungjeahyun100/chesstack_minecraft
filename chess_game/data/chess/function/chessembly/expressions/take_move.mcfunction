# take-move 명령 실행
# 인자: dx, dy (상대 좌표)

# 현재 앵커 위치에서 dx, dy만큼 이동한 칸 확인
# 빈 칸이면 활성화하고 true 반환
# 적이 있으면 활성화하고 false 반환
# 아군이나 벽이면 false 반환

# 여기서는 간단히 구현
tellraw @p ["",{"text":"take-move 실행","color":"gray"}]
