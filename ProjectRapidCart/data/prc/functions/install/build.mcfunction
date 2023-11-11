#> prc:install/build
#
# 初回起動時のセットアップ
#
# @wthin prc:core/load
#

# 残留スコアボード削除
	scoreboard objectives remove debug.info

# デバッグ用スコアボード作成
	# デバッグ情報
	scoreboard objectives add debug.info dummy "デバッグ情報"

# スコアボードの表示
	scoreboard objectives setdisplay sidebar debug.info
