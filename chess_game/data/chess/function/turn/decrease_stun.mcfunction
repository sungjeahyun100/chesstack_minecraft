# 스턴 스택 1 감소 (0 이하로는 내려가지 않음)

execute store result score @s chess.stun run data get entity @s data.stun_stack

execute if score @s chess.stun matches 1.. run scoreboard players remove @s chess.stun 1

execute store result entity @s data.stun_stack int 1 run scoreboard players get @s chess.stun
