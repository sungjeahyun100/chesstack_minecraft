# 기물 캡처 (잡기) 처리
# 실행자: 잡힌 기물

# 스택 계승
execute store result score #captured_stun chess.temp run data get entity @s data.stun_stack
execute store result score #captured_move chess.temp run data get entity @s data.move_stack

# 이 기물을 잡은 기물에게 스택 추가
# (잡은 기물은 @s를 잡은 기물로 설정되어 있어야 함)

# 기물 제거
kill @s

tellraw @a ["",{"text":"기물이 잡혔습니다!","color":"red"}]
