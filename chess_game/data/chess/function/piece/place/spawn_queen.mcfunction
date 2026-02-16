# 퀸 배치
# 실행자: 배치할 칸의 chess_square 마커

# 플레이어 색상 확인
execute if entity @p[tag=placing,tag=chess.white] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","white","queen","new_piece"],CustomName:'{"text":"♕ Queen","color":"white"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"queen",color:"white",stun_stack:9,move_stack:1,score:9}}

execute if entity @p[tag=placing,tag=chess.black] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","black","queen","new_piece"],CustomName:'{"text":"♛ Queen","color":"gray"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"queen",color:"black",stun_stack:9,move_stack:1,score:9}}

# 칸 데이터 업데이트
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.piece set value "queen"
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.color set value "white"

execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.piece set value "queen"
execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.color set value "black"

# 파티클 효과
particle minecraft:happy_villager ~1 ~0.5 ~1 0.3 0.3 0.3 0 10 normal
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2
