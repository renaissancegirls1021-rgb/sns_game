;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;レイヤー処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[layopt layer ="1" visible ="true"]
[layopt layer ="2" visible ="true"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;背景
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[bg storage="gray.png" time="0"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;変数
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;デバッグ用
;[jump target ="*tip"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;メイン
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

;オープニング
[if exp ="f.debug_op == true"]
;背景動画再生
[bgmovie storage="title.mp4" loop="false" volume="30"]
[wait time="3000"]

;タイトル表示
[image name="title" layer ="1" storage ="logo.png" width="200" top ="50" left ="380" page="back"]
[ptext name="title" layer ="1" text ="第 1 話" size ="48" width="900" x ="30" y ="260" color ="white" face ="kei" align ="center" edge="6px 0x000000" page="back"]
[ptext name="title" layer ="1" text ="ゴッホちゃんはチヤホヤされたい" size ="56" width="900" x ="30" y ="350" color ="white" face ="kei" align ="center" edge="6px 0x000000" page="back"]
[trans layer="1" time="500" ]

[wait time="500"]
;再生ボタン
[glink color="op_start_btn" text="再生する" width="300" x="330" y="500" target="*start"]
[s]

[endif]

*start

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;タイトル後場面転換
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;マスク
[mask time="200"]
[stop_bgmovie]
[free layer="1" name="title" time="0"]

;最初の背景設定
[bg storage="atelier.png" time="0"]
[filter layer="base" blur="1"]
[image layer ="1" name="filter" storage ="white.png"  top ="0" left ="0" ]

;最初のBGM再生
[playbgm storage="Onigiri.mp3"]
[filter layer="1" name="filter" opacity="30"]

;最初のキャラ表示
[chara_show layer="1"  name="gogh" face="cry" time="100" top="&f.gogh_top"]

;マスク
[wait time="200"]
[mask_off time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;本編
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[layopt layer ="message0" visible ="true"]

#gogh
げそぉ～～～っ。[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="komari" time="100" top="&f.rembrandt_top"]

#rembrandt
あらら。[r]
どうしたのゴッホ、 [text_tips text="星月夜" no="0"]より青い顔して。[p]

[chara_mod name="gogh" face="cry2" time="0" cross="false"]

#gogh
あっ。レンちゃんセンパイ。[r]
聞いて下さいよォ～。[p]

最近、SNSを見ると右も左も[r]
絵が上手い人ばっかりじゃないスか。[p]

かたや、自分は絵が売れず、[r]
明日のパンにも困るありさま……。[p]

[playse storage="bomb.mp3"]
;振動
[start_wiggle name="gogh"]

[kei text="……自分だって……"][r]
[kei text="チヤホヤされた～～～～い……ッス！"][p]

[chara_mod name="rembrandt" face="shirake" time="0" cross="false"]

#rembrandt
うわぁ、心配したのを後悔するくらいしょうもない！[p]

;振動終わり
[stop_wiggle name="gogh"]

#gogh
ぴえ～んっ！[r]
追い打ちかけるのやめてくださいっ！[p]

レンちゃんセンパイ、なんかいいアイデアないスかっ！[r]
みんなが、自分の方を見てくれるアイデアはっ！[p]

#rembrandt
それが簡単にできたら、[r]
芸術家は苦労しないよ……。[p]

[chara_mod name="rembrandt" face="komari" time="0" cross="false"]

でも、トモダチとして[r]
なんとかしてあげたいなぁ。[p]

[chara_mod name="rembrandt" face="normal" time="0" cross="false"]

#rembrandt
……そうだ！[r]
今流行りの[strong text="「アレ」"]やってみればいいんじゃない？[p]

#gogh
……「アレ」？[p]

;シーンチェンジ
[scene_change]

;キャラ表示
[chara_show layer="1"  name="michelangelo" time="100" top="150" top="&f.michelangelo_top"]

#michelangelo
おい、レンブラント。[r]
最近ゴッホのやつを見なかったか？[p]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="shirake" time="100" top="&f.rembrandt_top"]

#rembrandt
あぁ、ミケランジェロ。[r]
そうか、キミはSNSとかやってないんだっけ。[p]

……あいつ、手早くチヤホヤされたいって言うから、[r]
[strong text="Youtubeのお絵かき配信"]を勧めてみたんだよね。[p]

#michelangelo
ほう。[p]

たしか、ゴッホって[text_tips text="宣教師" no="1"]を目指してたんだよな？[r]
教えるのは得意そうなもんだが。[p]

#rembrandt
それが……[r]
なんか、ヘンな受け取り方をしちゃったみたいでね。[p]

;シーンチェンジ
[scene_change bg="youtube.png" bgm="oikakekko.mp3"]

;キャラ表示
[chara_show layer="1"  name="gogh" face="normal" time="100" top="&f.gogh_top"]

#gogh
[kei text="はろはろー、ユーチューブゥ！"][r]
[kei text="ゴッホちゃんでーっす！"][p]

今日は、[strong text="「これをやる絵師は絶ッッッ対に成功しない！"][r]
[strong text="今すぐやめるべき絵の習慣」"]を３つご紹介します！[p]

[chara_mod name="gogh" face="smile" time="0" cross="false"]

;ジャンプ
[kanim keyframe="jump" name="gogh" time="200" count="2"]
ひとつでも当てはまった方は、以下のURLをクリック！[r]
無料でお役立ち資料をご提供しま～～ッス！[p]

;シーンチェンジ
[scene_change bg="atelier.png"]

;キャラ表示
[chara_show layer="1"  name="michelangelo" time="100" top="&f.michelangelo_top"]

;キャラ表示
[chara_show layer="1"  name="rembrandt" face="shirake" time="100" top="&f.rembrandt_top"]

#michelangelo

[playse storage="bomb_2.mp3" volume="100"]

[kei text="……情報商材ビジネスじゃねーか！"][p]

#rembrandt
しかも本人、売れてないからね。絵。[p]

信じられないくらい炎上して、チャンネル消して[r]
フランスへ自分探しの旅に出たそうだよ。[p]

#michelangelo
[kei text="……そのまま帰ってくるな！"][p]

[layopt layer ="message0" visible ="false"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;終わりの処理
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
*tip

;マスク
[mask time="200"]

;いろいろ消す
[chara_hide_all layer="1" time="0" wait="true"]
#
[cm]
[fadeoutbgm time="200"]

;muse表示
[image layer ="1" name="muse" storage ="portrait/gogh.png" visible ="true" top ="-50" left ="450" width="480"]
[layopt layer ="1" opacity="30"]

;背景
[bg storage="white_frame.png" time="0"]

[playse storage="ending.wav" volume="70"]

;マスク
[wait time="200"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;tips
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[ptext name="title,line_spacing_large" layer ="2" text ="ゴッホは生前、</br>絵がほとんど売れなかった。" size ="48" width="900" x ="30" y ="48" color ="black" face ="kei" align ="center"]

[html left="0" top="180"]
<div class="box">
<p>ゴッホは生前、絵がほとんど売れなかった……というエピソードは日本でもよく知られています。</p>
<p>とはいえ「生前に売れたのは1枚だけ」という有名な話も正確にはやや誇張があるようで、<span class="html_red">何枚か売れていた可能性が高い</span>とか。しかし、<span class="html_red">「赤いブドウ畑」</span>という作品以外は、公的に売れた記録が残っていないのです……。</p>
</div>
[endhtml]

[ptext name="title" layer ="2" text ="END" size ="50" width="800" x ="30" y ="550" color ="black" face ="kei" align ="right"]

;マスクオフ
[mask_off time="200"]

[s]
