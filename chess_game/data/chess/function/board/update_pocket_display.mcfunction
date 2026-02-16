# 포켓 점수 표시 업데이트

# 백 플레이어 포켓 점수
execute store result score #white_pocket chess.temp run scoreboard players get @p[tag=chess.white] chess.pocket
execute if entity @p[tag=chess.white] run data modify entity @e[tag=chess_pocket_white,limit=1] text set value "[\"\",{\"text\":\"백 포켓: \",\"color\":\"white\"},{\"score\":{\"name\":\"@p[tag=chess.white]\",\"objective\":\"chess.pocket\"},\"color\":\"green\"}]"

# 흑 플레이어 포켓 점수
execute store result score #black_pocket chess.temp run scoreboard players get @p[tag=chess.black] chess.pocket
execute if entity @p[tag=chess.black] run data modify entity @e[tag=chess_pocket_black,limit=1] text set value "[\"\",{\"text\":\"흑 포켓: \",\"color\":\"gray\"},{\"score\":{\"name\":\"@p[tag=chess.black]\",\"objective\":\"chess.pocket\"},\"color\":\"green\"}]"
