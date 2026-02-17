# 기물 배치 핵심 로직
# 플레이어가 선택한 칸에 기물을 배치합니다
# 실행자: 클릭된 칸의 chess_square 마커

say place_piece activated

# 배치할 수 있는지 검증
# 1. 해당 칸이 비어있는지
execute unless data entity @s {data:{piece:"none"}} run tellraw @p[tag=placing] ["",{"text":"이미 기물이 있는 칸입니다!","color":"red"}]
execute unless data entity @s {data:{piece:"none"}} run return fail

# 2. 플레이어의 진영 영역인지 (백은 1-4랭크, 흑은 5-8랭크)
execute store result score #rank chess.temp run data get entity @s data.rank
execute if entity @p[tag=placing,tag=chess.white] if score #rank chess.temp matches 4.. run tellraw @p[tag=placing] ["",{"text":"백은 1-4랭크에만 배치할 수 있습니다!","color":"red"}]
execute if entity @p[tag=placing,tag=chess.white] if score #rank chess.temp matches 4.. run return fail
execute if entity @p[tag=placing,tag=chess.black] if score #rank chess.temp matches ..3 run tellraw @p[tag=placing] ["",{"text":"흑은 5-8랭크에만 배치할 수 있습니다!","color":"red"}]
execute if entity @p[tag=placing,tag=chess.black] if score #rank chess.temp matches ..3 run return fail

# 3. 포켓 점수가 충분한지
execute store result score #piece_cost chess.temp run scoreboard players get @p[tag=placing] chess.placing_cost
execute store result score #pocket_score chess.temp run scoreboard players get @p[tag=placing] chess.pocket
execute if score #pocket_score chess.temp < #piece_cost chess.temp run tellraw @p[tag=placing] ["",{"text":"포켓 점수가 부족합니다!","color":"red"}]
execute if score #pocket_score chess.temp < #piece_cost chess.temp run return fail

# 모든 검증 통과 - 기물 배치
# 배치할 기물 종류 가져오기
execute if entity @p[tag=placing,tag=placing_pawn] run function chess:piece/place/spawn_pawn
execute if entity @p[tag=placing,tag=placing_knight] run function chess:piece/place/spawn_knight
execute if entity @p[tag=placing,tag=placing_bishop] run function chess:piece/place/spawn_bishop
execute if entity @p[tag=placing,tag=placing_rook] run function chess:piece/place/spawn_rook
execute if entity @p[tag=placing,tag=placing_queen] run function chess:piece/place/spawn_queen

# 포켓 점수 차감
execute as @p[tag=placing] run scoreboard players operation @s chess.pocket -= @s chess.placing_cost

# 배치 완료 메시지
tellraw @p[tag=placing] ["",{"text":"기물을 배치했습니다!","color":"green"}]
playsound minecraft:entity.player.levelup master @p[tag=placing] ~ ~ ~ 0.5 1.5

# 배치 모드 종료 (플레이어로 전환)
execute as @p[tag=placing] run function chess:piece/place/clear_placing_mode
