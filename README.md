# アプリケーションについて

## アプリケーション名	
  Body Manager
## アプリケーション概要
  その日に食べたものの合計カロリーや栄養素、体重を投稿することができ、毎日の食事や身体のコンディションを記録することができる。
## URL
  https://diet-app-37859.herokuapp.com/
## テスト用アカウント
  - Basic認証ID admin
  - Basic認証パスワード 2222
  - ゲストログインメールアドレス guest@guest
  - ゲストログインパスワード guest123
## 利用方法
### 食事管理
  １：ユーザー登録を行う。  
  ２：新規記録作成ページから、記録を作成する日付を選択し作成ボタンを押す。  
  ３：作成が完了すると、選択した日の詳細ページへ遷移される。  
  ４：詳細ページにて食事記録の項目を入力し投稿することで、記録が保存、表示される。  
### 体重管理
  ※ 現在未実装
### マイメニュー機能
  ※ 現在未実装
## アプリケーションを作成した背景
  私は趣味がボディメイクで、筋トレや食事管理を行なっている。食事管理をするために、カロリー計算や日々の食事を記録をするための使いやすいアプリケーションが必要だと思い、このアプリケーションを開発することにした。
## 洗い出した要件
  こちらの[要件定義書](1IKgBYdU9itBpVNo6cb4urZDtvRVYeDn5MKTrXzAaYRc/edit#gid=982722306)に記載
  ※ 大幅な変更あり
## 実装予定の機能
  - 体重記録機能
  - マイメニュー管理機能
## 実装した機能についての画像やGIFおよびその説明
### 食事管理機能の一覧画面GIF
  [![Image from Gyazo](https://i.gyazo.com/a1731da3ca13bd657095b59c65482c4c.gif)](https://gyazo.com/a1731da3ca13bd657095b59c65482c4c)
### 新規記録作成GIF
  [![Image from Gyazo](https://i.gyazo.com/3db0d3eb42b5336d527d0c9a12a36bbf.gif)](https://gyazo.com/3db0d3eb42b5336d527d0c9a12a36bbf)
### 食事記録詳細画面と新規食事記録作成GIF
  [![Image from Gyazo](https://i.gyazo.com/d831da974465306b33256b94f5f90aef.gif)](https://gyazo.com/d831da974465306b33256b94f5f90aef)
### 食事記録一覧画面の今日の記録表示GIF
  [![Image from Gyazo](https://i.gyazo.com/dcef39913fb7f8d5f51beca78d973e91.gif)](https://gyazo.com/dcef39913fb7f8d5f51beca78d973e91)
## データベース設計
  [![Image from Gyazo](https://i.gyazo.com/3fc953660df228b1d331388704327d0a.png)](https://gyazo.com/3fc953660df228b1d331388704327d0a)
## 画面遷移図
  [![Image from Gyazo](https://i.gyazo.com/04353711b16f56bd4a1dcd78c22096f1.png)](https://gyazo.com/04353711b16f56bd4a1dcd78c22096f1)
## 開発環境	
  - Ruby
  - Ruby on Rails
  - HTML/CSS
  - MySQL
  - Github
  - Visual Studio Code
## 工夫したポイント
  - シンプルで分かりやすいこと
  - 食事記録が分類別で記録できること
  - グラフをつけることにより、見やすくしたこと