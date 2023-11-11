#> prc:core/tick
#
# 常時実行コマンド
#

# 足元のブロックを検知して，タグ付け
	function prc:cart_status/check_blocks

# トロッコの動きを確認する
	function prc:cart_status/check_motion

# 速度をセットする
	function prc:cart_status/move_minecart

# 自動放送をする
	function prc:auto_announce/auto_announce

# スピードメーター
	function prc:speedmeter/speedmeter