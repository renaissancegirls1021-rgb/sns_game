[title name="ルネサンスガールズ"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デバッグフラグ
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;システム関連
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;音楽再生
[eval exp="f.debug_mute = true"]
[eval exp="f.debug_mute = false"]

;オープニング trueで再生する
[eval exp="f.debug_op = true"]
;[eval exp="f.debug_op = false"]

;デフォ音量設定
[seopt volume="20"]
[bgmopt volume="20"]

[if exp ="f.debug_mute == true"]
[seopt volume="0"]
[bgmopt volume="0"]
[endif]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;セーブデータ削除
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
/*
[iscript]
localStorage.clear();
[endscript]
*/

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デフォルト設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;右下のメニューボタンを非表示にする
[hidemenubutton]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;タップしてスタート
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[font size="20" bold="true" color="white"]
[nolog]
クリックかタップしてスタート[p]
[endnolog]
[resetfont]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プラグインとマクロ読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[call target="*plugin"]
[call target="*macro"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;マウスカーソル設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[cursor storage="my_cursor.png"]
[cursor storage="my_cursor_hover.png" type="pointer"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;メッセージウィンドウ設定
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;デフォルトは会話用
[position layer="message0" left="16" top="448" width="936" height="184" frame="frame.png" margint="48" marginl="16" marginr="16" marginb="10" opacity="255" visible="false"]

;名前表示位置
[ptext name="chara_name_area" layer="message0" width="256" x="44" y="456" size="32" face="kei"]
[chara_config ptext="chara_name_area"]

[chara_config talk_focus="brightness" talk_anim="up" talk_anim_time="100" pos_change_time="300"]

;ポポポ音
[popopo volume="20" type="triangle"  time="10" frequency="G"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;キャラ定義
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

;キャラデータロード
[call storage="chara_list.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プリロード
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
[call storage="preload.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;配列
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

[iscript]
f.tips_text = [];
[endscript]

[eval exp="f.tips_text[0] = 'ゴッホの代表作。うねるように渦巻く青い星空が特徴的。'"]
[eval exp="f.tips_text[1] = 'ゴッホは父の影響もありキリスト教の宣教師を目指していたが、途中で挫折した。'"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;アニメ定義
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;アニメロード
[call storage="my_anime.ks"]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;画面へ移動
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

;会話本文ページ
[jump storage ="talk/test.ks"]

[s]


;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;マクロ読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*macro
[call storage="macro.ks"]


[return]

;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
;プラグイン読み込み
;★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
*plugin

;乱数プラグイン読み込み
[plugin name="intrandom"]

;ポポポ音プラグイン
[plugin name="popopo"]

;リロードボタン消すプラグイン
[plugin name="ReloadHide"]

;アニメプラグイン
[plugin name="kanimMacro"]

;漫符プラグイン
[plugin name="manpu"]

;tipsプラグイン
[plugin name="tooltip"]

[return]


[s]
