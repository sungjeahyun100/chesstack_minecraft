# 비숍 배치
# 실행자: 배치할 칸의 chess_square 마커

# 플레이어 색상 확인
execute if entity @p[tag=placing,tag=chess.white] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","white","bishop","new_piece"],CustomName:'{"text":"♗ Bishop","color":"white"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"bishop",color:"white",stun_stack:3,move_stack:3,score:3}}

execute if entity @p[tag=placing,tag=chess.black] run summon armor_stand ~1 ~0 ~1 {Tags:["chess_piece","black","bishop","new_piece"],CustomName:'{"text":"♝ Bishop","color":"gray"}',Marker:1b,Invisible:1b,NoGravity:1b,data:{piece:"bishop",color:"black",stun_stack:3,move_stack:3,score:3}}

# 칸 데이터 업데이트
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.piece set value "bishop"
execute if entity @p[tag=placing,tag=chess.white] run data modify entity @s data.color set value "white"

execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.piece set value "bishop"
execute if entity @p[tag=placing,tag=chess.black] run data modify entity @s data.color set value "black"

# 새로 생성된 기물을 즉시 시각화
execute as @e[tag=new_piece] run function chess:piece/visualize
tag @e[tag=new_piece] remove new_piece

# 파티클 효과
particle minecraft:happy_villager ~1 ~0.5 ~1 0.3 0.3 0.3 0 10 normal
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2
