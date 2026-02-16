# 이동 가능한 칸 표시
# 실행자: 이동 가능한 칸 마커

# 초록색 파티클
particle minecraft:happy_villager ~1 ~0.3 ~1 0.5 0.1 0.5 0 5 normal

# 이동 가능 표시 (플레이어 머리 위)
execute at @p run particle minecraft:composter ~1 ~0.5 ~1 0.3 0.1 0.3 0 3 normal

# 태그 추가
tag @s add valid_move
