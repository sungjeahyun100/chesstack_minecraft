# 턴 표시 업데이트

execute if score #current_turn chess.game matches 0 run data modify entity @e[tag=chess_turn_display,limit=1] text set value {"text":"백 턴","color":"white","bold":true}

execute if score #current_turn chess.game matches 1 run data modify entity @e[tag=chess_turn_display,limit=1] text set value {"text":"흑 턴","color":"gray","bold":true}
