# 디버그: 현재 게임 상태 확인

tellraw @s ["",{"text":"========== 게임 상태 ==========","color":"aqua","bold":true}]
tellraw @s ""

# 게임 상태
execute store result score #temp chess.temp run scoreboard players get #game_state chess.game
tellraw @s ["",{"text":"게임 상태: ","color":"yellow"},{"score":{"name":"#game_state","objective":"chess.game"},"color":"white"}]

# 현재 턴
execute store result score #temp chess.temp run scoreboard players get #current_turn chess.game
execute if score #current_turn chess.game matches 0 run tellraw @s ["",{"text":"현재 턴: ","color":"yellow"},{"text":"백 (0)","color":"white"}]
execute if score #current_turn chess.game matches 1 run tellraw @s ["",{"text":"현재 턴: ","color":"yellow"},{"text":"흑 (1)","color":"gray"}]
execute unless score #current_turn chess.game matches 0..1 run tellraw @s ["",{"text":"현재 턴: ","color":"yellow"},{"text":"미설정","color":"red"}]

# 플레이어 태그
tellraw @s ""
execute if entity @s[tag=chess.white] run tellraw @s ["",{"text":"내 팀: ","color":"yellow"},{"text":"백 (White)","color":"white"}]
execute if entity @s[tag=chess.black] run tellraw @s ["",{"text":"내 팀: ","color":"yellow"},{"text":"흑 (Black)","color":"gray"}]
execute unless entity @s[tag=chess.white] unless entity @s[tag=chess.black] run tellraw @s ["",{"text":"내 팀: ","color":"yellow"},{"text":"없음 (팀 미할당)","color":"red"}]

# 포켓 점수
tellraw @s ""
execute if entity @s[tag=chess.white] run tellraw @s ["",{"text":"포켓 점수: ","color":"yellow"},{"score":{"name":"@s","objective":"chess.pocket"},"color":"green"}]
execute if entity @s[tag=chess.black] run tellraw @s ["",{"text":"포켓 점수: ","color":"yellow"},{"score":{"name":"@s","objective":"chess.pocket"},"color":"green"}]

# 배치 모드
tellraw @s ""
execute if entity @s[tag=placing] run tellraw @s ["",{"text":"배치 모드: ","color":"yellow"},{"text":"활성화 ✓","color":"green"}]
execute unless entity @s[tag=placing] run tellraw @s ["",{"text":"배치 모드: ","color":"yellow"},{"text":"비활성화","color":"gray"}]

tellraw @s ""
tellraw @s ["",{"text":"==========================","color":"aqua"}]
