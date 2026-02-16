# 기물 캡처 (잡기) 처리
# 실행자: 잡힌 기물

# 로얄 피스인지 확인 (킹이 잡히면 게임 종료)
execute if data entity @s {data:{is_royal:1b}} if entity @s[tag=white] run function chess:game/win_black
execute if data entity @s {data:{is_royal:1b}} if entity @s[tag=black] run function chess:game/win_white
execute if data entity @s {data:{is_royal:1b}} run return 0

# 스택 계승
execute store result score #captured_stun chess.temp run data get entity @s data.stun_stack
execute store result score #captured_move chess.temp run data get entity @s data.move_stack
execute store result score #captured_score chess.temp run data get entity @s data.piece_score

# 잡은 기물에게 스택 추가
execute as @e[tag=selected,limit=1] run scoreboard players operation @s chess.stun += #captured_stun chess.temp
execute as @e[tag=selected,limit=1] run scoreboard players operation @s chess.move += #captured_move chess.temp

# NBT에도 반영
execute as @e[tag=selected,limit=1] store result entity @s data.stun_stack int 1 run scoreboard players get @s chess.stun
execute as @e[tag=selected,limit=1] store result entity @s data.move_stack int 1 run scoreboard players get @s chess.move

# 잡은 플레이어의 포켓 점수 추가
execute if entity @s[tag=white] run scoreboard players add @a[tag=chess.black,limit=1] chess.pocket 0
execute if entity @s[tag=black] run scoreboard players add @a[tag=chess.white,limit=1] chess.pocket 0

# 기물 이름 저장
data modify storage chess:temp captured_name set from entity @s CustomName

# 파티클 효과
particle minecraft:angry_villager ~ ~1 ~ 0.3 0.5 0.3 0 10 normal
particle minecraft:smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.05 20 normal

# 사운드
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.8 1.2

# 메시지
tellraw @a ["",{"nbt":"captured_name","storage":"chess:temp","interpret":true},{"text":" 기물이 잡혔습니다!","color":"red"}]

# 기물 제거
kill @s

# 태그 제거
tag @s remove captured

