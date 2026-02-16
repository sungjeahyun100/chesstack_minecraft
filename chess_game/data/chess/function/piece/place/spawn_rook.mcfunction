# 룩 배치
# 실행자: 배치할 칸의 chess_square 마커

# 플레이어 색상 확인
execute if entity @p[tag=placing,tag=chess.white] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","white","rook","new_piece"],CustomName:'{"text":"♖ Rook","color":"white"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"rook",color:"white",stun_stack:5,move_stack:2,score:5}}

execute if entity @p[tag=placing,tag=chess.black] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","black","rook","new_piece"],CustomName:'{"text":"♜ Rook","color":"gray"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"rook",color:"black",stun_stack:5,move_stack:2,score:5}}

# 칸 데이터 업데이트
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.piece set value "rook"
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.color set value "white"

execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.piece set value "rook"
execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.color set value "black"

# 파티클 효과
particle minecraft:happy_villager ~1 ~0.5 ~1 0.3 0.3 0.3 0 10 normal
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2
