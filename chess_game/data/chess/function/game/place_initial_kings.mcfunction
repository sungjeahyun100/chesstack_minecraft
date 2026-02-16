# 초기 킹 배치
# 백: e1, 흑: e8

# e1 칸 찾기 (file=4, rank=0)
execute as @e[tag=chess_square,tag=e1] at @s run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","white","king"],CustomName:'{"text":"♔ King","color":"white"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"king",color:"white",stun_stack:0,move_stack:3,is_royal:1b}}

# e8 칸 찾기 (file=4, rank=7)
execute as @e[tag=chess_square,tag=e8] at @s run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","black","king"],CustomName:'{"text":"♚ King","color":"gray"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"king",color:"black",stun_stack:0,move_stack:3,is_royal:1b}}

# 칸 데이터 업데이트
execute as @e[tag=chess_square,tag=e1] run data modify entity @s data.piece set value "king"
execute as @e[tag=chess_square,tag=e1] run data modify entity @s data.color set value "white"

execute as @e[tag=chess_square,tag=e8] run data modify entity @s data.piece set value "king"
execute as @e[tag=chess_square,tag=e8] run data modify entity @s data.color set value "black"

tellraw @a ["",{"text":"초기 킹이 배치되었습니다.","color":"green"}]
