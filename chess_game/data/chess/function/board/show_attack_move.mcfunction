# 공격 가능한 칸 표시 (적 기물이 있는 칸)
# 실행자: 공격 가능한 칸 마커

# 빨간색 파티클
particle minecraft:dust 1 0 0 1 ~1 ~0.3 ~1 0.5 0.1 0.5 0 5 normal

# 공격 가능 표시
execute at @p run particle minecraft:angry_villager ~1 ~0.5 ~1 0.3 0.1 0.3 0 2 normal

# 태그 추가
tag @s add attack_move
