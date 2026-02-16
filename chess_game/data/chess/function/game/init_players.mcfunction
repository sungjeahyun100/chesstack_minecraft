# 플레이어 초기화
# 백과 흑 플레이어 설정

# 게임 상태 초기화
scoreboard players set #current_turn chess.game 0
scoreboard players set #game_state chess.game 0

# 플레이어에게 팀 할당 (임시로 가장 가까운 2명)
tag @a remove chess.white
tag @a remove chess.black

# 첫 번째 플레이어는 백
tag @p add chess.white
# 두 번째 플레이어는 흑
execute as @a unless entity @s[tag=chess.white] run tag @s add chess.black

# 포켓 점수 초기화 (39점)
scoreboard players set @a[tag=chess.white] chess.pocket 39
scoreboard players set @a[tag=chess.black] chess.pocket 39

tellraw @a ["",{"text":"체스택 게임이 초기화되었습니다!","color":"gold"}]
tellraw @a[tag=chess.white] ["",{"text":"당신은 백(White) 플레이어입니다.","color":"white"}]
tellraw @a[tag=chess.black] ["",{"text":"당신은 흑(Black) 플레이어입니다.","color":"gray"}]
