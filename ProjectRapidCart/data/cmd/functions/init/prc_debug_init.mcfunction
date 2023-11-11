#> cmd:init/prc_debug_init
#
# 初回起動時のデバッグモードセットアップ
#

# スコアボード各初期化
	# ブロック情報 (101->砂利, 2->砂岩, 103->磨かれた石, 0->, 15x->アナウンス用, 1->その他) 初期化
	scoreboard players set $prc.blocks debug.info 0
	
	# トロッコの動き情報 初期化 (x -> -:North,+:South. z -> -:West, +:East) 
	scoreboard players set $prc.move_x debug.info 0
	scoreboard players set $prc.move_y debug.info 0
	scoreboard players set $prc.move_z debug.info 0

	# 自動放送用フラグ
	scoreboard players set $prc.announceN debug.info 1

	# 基準となる変数
	scoreboard players set $prc.zero debug.info 0

	# 定数
	scoreboard objectives add constant dummy "定数"
	scoreboard players set $1000 constant 1000
	scoreboard players set $7200 constant 7200

# スコアボード表示
scoreboard objectives setdisplay sidebar debug.info
