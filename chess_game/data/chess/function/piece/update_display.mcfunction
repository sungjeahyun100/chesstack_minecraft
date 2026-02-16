# 기물 디스플레이 업데이트
# 이름에 스택 정보 표시

execute store result score @s chess.stun run data get entity @s data.stun_stack
execute store result score @s chess.move run data get entity @s data.move_stack

# 킹 예시
execute if entity @s[tag=king,tag=white] run data modify entity @s CustomName set value '["",{"text":"♔ King ","color":"white"},{"text":"[S:","color":"red"},{"score":{"name":"@s","objective":"chess.stun"},"color":"red"},{"text":" M:","color":"green"},{"score":{"name":"@s","objective":"chess.move"},"color":"green"},{"text":"]","color":"white"}]'

execute if entity @s[tag=king,tag=black] run data modify entity @s CustomName set value '["",{"text":"♚ King ","color":"gray"},{"text":"[S:","color":"red"},{"score":{"name":"@s","objective":"chess.stun"},"color":"red"},{"text":" M:","color":"green"},{"score":{"name":"@s","objective":"chess.move"},"color":"green"},{"text":"]","color":"white"}]'
