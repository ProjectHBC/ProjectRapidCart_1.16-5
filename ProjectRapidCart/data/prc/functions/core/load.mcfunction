#> prc:/load
#
# 読み込み時ロードする
#
# @within tag/function minecraft:load

# インストールメッセージを表示
    tellraw @a "Project Rapid Cart V0.6 Load Complete!"

# 必要な準備データを生成
    function prc:install/build

# スコアボード初期化
	function cmd:init/prc_debug_init
	function cmd:init/prc_meter_init

# スコアボード無表示
	function cmd:debug/prc_debug_off