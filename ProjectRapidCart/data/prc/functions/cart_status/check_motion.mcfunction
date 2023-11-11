#> prc:cart_status/check_motion
#
#	トロッコの動きを確認する
#
#	@within prc:core/tick

# データタグからトロッコの動きを確認し，スコアボードに格納する
	# 東西方向の動きを見る
	execute at @e[type=minecart, limit=1, sort=nearest] store result score $prc.move_x debug.info run data get entity @e[type=minecart, limit=1, sort=nearest] Motion[0] 1000
	# 上下方向の動きを見る
	execute at @e[type=minecart, limit=1, sort=nearest] store result score $prc.move_y debug.info run data get entity @e[type=minecart, limit=1, sort=nearest] Motion[1] 1000
	# 南北方向の動きを見る
	execute at @e[type=minecart, limit=1, sort=nearest] store result score $prc.move_z debug.info run data get entity @e[type=minecart, limit=1, sort=nearest] Motion[2] 1000
