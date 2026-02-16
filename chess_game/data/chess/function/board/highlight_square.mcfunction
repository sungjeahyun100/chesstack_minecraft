# 칸 선택 시각화
# 실행자: 선택된 칸 마커

# 선택된 칸 강조 (파티클)
particle minecraft:end_rod ~1 ~0.2 ~1 0.5 0.1 0.5 0.01 3 normal

# 선택된 칸에 발광 블록 배치
fill ~0 ~0 ~0 ~2 ~0 ~2 light[level=15] replace air

# 선택된 칸 태그 추가
tag @s add selected_square
