#> prc:cart_status/check_blocks
#
# 足元のブロックを検知し，ブロックによるタグ付けを行う
#
# @within prc:core/tick

# 足元の道床が砂利だったら
	# デバッグ用
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_rapid_50 run scoreboard players set $prc.blocks debug.info 101
	# トロッコのタグを変更する
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_rapid_50 run data merge entity @e[type=minecart, limit=1, sort=nearest] {Tags:["prc_rapid_cart_50"]}

# 足元の道床が磨かれた石だったら
	# デバッグ用
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_rapid_70 run scoreboard players set $prc.blocks debug.info 103
	# トロッコのタグを変更する
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_rapid_70 run data merge entity @e[type=minecart, limit=1, sort=nearest] {Tags:["prc_rapid_cart_70"]}

# 足元の道床が黒曜石だったら
	# デバッグ用
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_stop run scoreboard players set $prc.blocks debug.info 0
	# トロッコのタグを変更する
	execute at @e[type=minecart, limit=1, sort=nearest] if block ~ ~-1 ~ #blocks:prc_stop run data merge entity @e[type=minecart, limit=1, sort=nearest] {Tags:["prc_stop"]}


# 足元の道床が上記以外だったら
	# デバッグ用
	execute at @e[type=minecart, limit=1, sort=nearest] unless block ~ ~-1 ~ #blocks:prc_rapid_mode run scoreboard players set $prc.blocks debug.info 1
	# トロッコのタグを変更する
	execute at @e[type=minecart, limit=1, sort=nearest] unless block ~ ~-1 ~ #blocks:prc_rapid_mode run data merge entity @e[type=minecart, limit=1, sort=nearest] {Tags:["prc_normal"]}
