#> cmd:init/prc_meter_init
#
# スピードメーターセットアップ
#
# @within prc
#

# 残留スコアボード削除
	scoreboard objectives remove speed.info

# デバッグ用スコアボード作成
	# デバッグ情報
	scoreboard objectives add speed.info dummy "スピードメーター"
	# 現在の速度初期化
	scoreboard players set $prc.speed speed.info 0
