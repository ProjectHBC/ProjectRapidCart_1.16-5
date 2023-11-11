#> prc:cart_status/move_minecart
#
#	トロッコを動かす
#
#	移動ベクトルの数値は変数不可
#
#	50km/h -> 13.9m/s -> 0.69m/tick
#	60km/h -> 16.7m/s -> 0.83m/tick
#	70km/h -> 19.4m/s -> 0.97m/tick
#
#	@within prc:core/tick


# 西方向に加速させる
	# 50km/hの場合
	execute if score $prc.move_x debug.info < $prc.zero debug.info run execute as @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] at @s run teleport ~-0.69 ~ ~
	# 70km/hの場合
	execute if score $prc.move_x debug.info < $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_70, limit=1, sort=nearest] {Motion:[-0.97, 0.00, 0.00]}

# 東方向に加速させる
	# 50km/hの場合
	execute if score $prc.move_x debug.info > $prc.zero debug.info run execute as @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] at @s run teleport ~0.69 ~ ~
	# execute if score $prc.move_x debug.info > $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] {Motion:[0.69, 0.00, 0.00]}
	# 70km/hの場合
	execute if score $prc.move_x debug.info > $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_70, limit=1, sort=nearest] {Motion:[0.97, 0.00, 0.00]}

# 北方向に加速させる
	# 50km/hの場合
	# execute if score $prc.move_z debug.info < $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] {Motion:[0.00, 0.00, -0.69]}
	execute if score $prc.move_z debug.info < $prc.zero debug.info run execute as @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] at @s run teleport ~ ~ ~-0.69

	# 70km/hの場合
	# execute if score $prc.move_z debug.info < $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_70, limit=1, sort=nearest] {Motion:[0.00, 0.00, -0.97]}

# 南方向に加速させる
# 50km/hの場合
	# execute if score $prc.move_z debug.info > $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] {Motion:[0.00, 0.00, 0.69]}
	execute if score $prc.move_z debug.info > $prc.zero debug.info run execute as @e[tag=prc_rapid_cart_50, limit=1, sort=nearest] at @s run teleport ~ ~ ~0.69

	# 70km/hの場合
	execute if score $prc.move_z debug.info > $prc.zero debug.info run data merge entity @e[tag=prc_rapid_cart_70, limit=1, sort=nearest] {Motion:[0.00, 0.00, 0.97]}

# 停止させる
	data merge entity @e[tag=prc_stop, limit=1, sort=nearest] {Motion:[0.00, 0.00, 0.00]}