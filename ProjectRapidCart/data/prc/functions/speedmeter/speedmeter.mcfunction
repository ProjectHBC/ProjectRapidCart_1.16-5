#> prc:speedmeter/speedmeter
#
# スピードメーターセットアップ
#
# @within prc
#


# 現在の速度をセットする
	# 西に進んでいたら
	execute if score $prc.move_x debug.info < $prc.move_z debug.info run execute if score $prc.move_x debug.info > $prc.zero debug.info run execute store result score $prc.speed speed.info run data get entity @e[type=minecart, sort=nearest, limit=1] Motion[0] -7200
	# 東に進んでいたら
	execute if score $prc.move_x debug.info > $prc.move_z debug.info run execute if score $prc.move_x debug.info > $prc.zero debug.info run execute store result score $prc.speed speed.info run data get entity @e[type=minecart, sort=nearest, limit=1] Motion[0] 7200
	# 北に進んでいたら
	execute if score $prc.move_x debug.info > $prc.move_z debug.info run execute if score $prc.move_z debug.info < $prc.zero debug.info run execute store result score $prc.speed speed.info run data get entity @e[type=minecart, sort=nearest, limit=1] Motion[2] -7200
	# 南に進んでいたら
	execute if score $prc.move_x debug.info < $prc.move_z debug.info run execute if score $prc.move_z debug.info > $prc.zero debug.info run execute store result score $prc.speed speed.info run data get entity @e[type=minecart, sort=nearest, limit=1] Motion[2] 7200