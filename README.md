#   修正可能性
未機能
ポートフォリをの投稿（画像、動画、説明、（URL クリックで飛ぶようにしたい）（編集、削除）
ビューの中身の作成（new,index,show,edit )(URLはまこ俺が終わってからクリックして飛ばす投稿の方法がわからないため)
ビューのchange.html.erb入らない可能性あり使う場合は消すための一覧を表示するために使う可能性あり
#   修正可能性
bunnkatuで分割のbunnkatu（ブログ、ポートフォリオを分岐をするためのページ）
indexで飛べないため仮のitiに変更

# 問題点

画像のサイズが大きい

デザイン
表示をブートストラップを使う
ジャバスクリプトを使う

最後にやること
dbにいらないテーブルがないか確認削除

# アプリケーション名
ホームページ

# アプリケーション概要
ポートフォリオ、ブログが投稿できるホームページ

# URL
# テスト用アカウント
# 利用方法
# アプリケーションを作成した背景
HTML、CSS、JavaScript、だけで作ったHPではポートフォリやブログを頻繁に更新（投稿）した際に
HTMLの文が多くなり一々データーの入ったパソコンを開かなくてはならない
アプリにすることでどの端末でも投稿削除ができるようになればスマートフォンでも投稿可能になり
使いやすくなると考えた


# 実装予定の機能
Basic認証で投稿画面に行かせない（セキュリティ面で問題があれば　gemのdeviceでログイン機能を追加する）
またはブログORポートフォリオのサイトでもBasic認証をかける
イメージ図
<a href="https://gyazo.com/1bb2fa9b36158a9835298dc72304f681"><img src="https://i.gyazo.com/1bb2fa9b36158a9835298dc72304f681.png" alt="Image from Gyazo" width="332"/></a>
投稿
ポートフォリを（画像OR動画、文字、URL）

# データベース設計
# 画面遷移図
# 開発環境
*フロントエンド言語：JavaScript、HTML、CSS

*バックエンドフレームワーク：Rails7.0.0 

*バックエンド言語:Ruby3.2.0

*ミドルウェア：Mysql0.5.5、PostgreSQL

*インフラ：Render
# 工夫したポイント
投稿画面を隠しBasic認証で使用者以外投稿できないようにする
# 改善点
# 制作時間
1月20日 1時間
1月21日 2時間
1月22日 時間


合計
# 歴史

