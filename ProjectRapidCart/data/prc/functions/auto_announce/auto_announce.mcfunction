#> prc:auto_announce/auto_announce
#
#	自動放送
#
# @within prc:core/tick

# 足元の道床が赤石だったら看板があるか確認する
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run data modify storage announce1 nbt set from block ~ ~-2 ~ Text1
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run data modify storage announce2 nbt set from block ~ ~-2 ~ Text2
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run data modify storage announce3 nbt set from block ~ ~-2 ~ Text3
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run data modify storage announce4 nbt set from block ~ ~-2 ~ Text4
# 自動放送フラグをオンにする
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run scoreboard players set $prc.announceN debug.info 0
# デバッグ用
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_check run scoreboard players set $prc.blocks debug.info 150

# 看板の2行目から得た文字列を表示する
execute if score $prc.announceN debug.info = $prc.zero debug.info run execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_speak run tellraw @p {"nbt":"nbt", "storage":"announce1", "interpret": true, "extra": [{"nbt":"nbt", "storage":"announce2", "interpret": true},{"nbt":"nbt", "storage":"announce3", "interpret": true},{"nbt":"nbt", "storage":"announce4", "interpret": true}]}
# 自動放送フラグをオフにする
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_speak run scoreboard players set $prc.announceN debug.info 1
# デバッグ用
execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_aa_speak run scoreboard players set $prc.blocks debug.info 151