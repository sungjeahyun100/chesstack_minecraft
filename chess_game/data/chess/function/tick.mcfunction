# 매 틱마다 실행되는 함수

# 게임이 진행 중일 때만 실행
execute if score #game_state chess.game matches 0..1 run function chess:tick_game
