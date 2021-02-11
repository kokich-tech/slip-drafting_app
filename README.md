# README

# アプリ名
　SDシステム
 　▶︎伝票予約システム

# 概要
   伝票を手で書く必要なく、出金金額、入金金額を指定することができます。</br>
   自宅で気軽に登録しておくことで来店時の待ち時間軽減につなげることができます。</br>
   目が不自由な方などの伝票起票のお手伝いをすることが可能になります。</br>
  
# 本番環境
　 デプロイ環境構築未完成のため、完成次第掲載
 
# 制作背景
   このアプリを制作し、解決したいことが２つあります。
   まず１つ目は高齢者の方がストレスなく起票することができるようになることです。
   例えば白内障を患っているお客様、視力が著しく悪い方は手元がぼやけて見えてしまうため、数字を書くことは極めて困難です。
   しかし、代筆が認められていないため、窓口で入出金作業をするには本人が無理にでも起票する必要があります。
   見えない所に書くことは非常にストレスに感じる方も多く、なるべく視覚的にわかりやすく、高齢者の負担にもなりにくいようにとこのアプリを作成するに至りました。
   ２つ目は銀行での事務量の負担軽減を図ることです。
   このアプリを作ることで伝票を製本する手間であったり、保管しておくスペースの削減も期待することができます。
   また、データをそのままオペレーション機に送ることができるため、行員の入力ミスから生まれるトラブルや、後方での検閲の手間を省くことができるので、
   窓口、後方の事務軽減にもつながります。
   また渉外担当が集金先、法人様においての集金事務の際、伝票を事前に登録していただくことで、従来の起票の時間を他のご提案につなげることができたり、伝票紛失
   の可能性がなくなり、トラブルを減らすことが期待できます。
   

# DEMO
トップページ
https://gyazo.com/b96afd5f444cf238b7e676cd1bdfb0b9

新規登録画面
https://gyazo.com/ab0d337b5d97eea14932dd7733cfb781
</br>こちらでSDシステムで使うIDとパスワードの設定をしていただく。

ログイン後トップページ
https://gyazo.com/b9d70a7631adb03795b3131b06d1e19f

伝票記入押下後画面
https://gyazo.com/4bc08efe4b7ffb142db943c773ecf531
</br>今回の機能は、入出金の際に必要になる伝票記入システムと伝票予約した情報を照会できるシステム。

出金伝票記入画面
https://gyazo.com/ee8e4da336160135dad475b2d2f0adea
</br>出金する際に金種を指定できます。

入金伝票記入画面
https://gyazo.com/86232e678f1477a0d6bc2fdbf77e1abe


出金伝票予約確認画面
https://gyazo.com/8244e772fc44eaf3331c03ca21f79770


入金伝票予約確認画面
https://gyazo.com/f12dc8023f6d72eeb155aa6b4762d583


# 工夫した点
・ウィザード形式の新規登録画面を作ることで、システムに必要な情報を入力する画面と口座情報を照会するために必要な画面
に分けることで、利用者にわかりやすく登録していただくようにしました。</br>
・ログイン状態出ないと起票できないように条件分岐をしました。</br>
・金種指定の欄を設けたことで、事前に用意しておくことができるため、来店時にスムーズに受け取ることができるように工夫しました。</br>
・担当者入力欄を書くことで（任意）、事前に金融商品のご提案の準備や、他行への資金流出を防ぐことが期待できるように工夫しました。</br>
・利用者にわかりやすいようにボタンを大きく表示し、出金か入金か、ログイン画面はどこなのかをわかりやすく表示しました。</br>

 

## usersテーブル
|Column|Type|Option|
|------|----|------|
|nickname|string|null: false, unique: true, index:true|
|email|string|null: false, unique: true, default: ""|
|encrypted_password|string|null: false, default: ""|
|familyname|string|null: false|
|familyname_kana|string|null: false|
|firstname|string|null: false|
|firstname_kana|string|null: false|
|birthday|date|null: false|
|reset_password_token|string|
|reset_password_sent_at|datetime|
|remember_created_at|datetime|
### Association
- has_one :address
- has_many  :withdrawal
- has_many :payment


## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|integer|
|prefecture_id|integer|
|city|text|
|house_number|text|
|building|text|
|telephone|integer|
|user_id|integer|
|deposit_id|integer|
|account|integer|

### Association
belongs_to :user, optional: true

## withdrawalテーブル
|Column|Type|Option|
|------|----|------|
|purpose_id|integer|null: false|
|store_description|text|null: false|
|price|integer|null: false|
|price_10000|integer|
|price_5000|integer|
|price_1000|integer|
|price_500|integer|
|price_100|integer|
|price_50|integer|
|price_10|integer|
|price_5|integer|
|price_1|integer|
|staff_name|text|
|user|references|foreign_key: true|

### Association
- belongs_to :user, optional: true

## paymentテーブル
|Column|Type|Option|
|------|----|------|
|purposepay_id|integer|null: false|
|store_description|integer|null: false|
|type_id|integer|null: false|
|price|integer|null:false|
|staff_name|text|
|user|references|foreign_key: true|

### Association
- belongs_to :user, optional: true

# 実装予定の内容
・来店日時の予約フォーム</br>
・伝票予約情報の編集</br>
・マイページの作成</br>
・エラーメッセージの作成</br>
・来店時の持ち物表示機能を作る</br>

