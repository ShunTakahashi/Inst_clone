# Inst_clone
Instagram URL:https://www.instagram.com/ を模倣したクローンアプリ。

* ユーザーのプロフィール編集機能

* 画像に文章を添えた投稿機能

* ユーザー間のいいね！を付ける機能

* いいね！をつけた投稿一覧ページ

# バージョン
* Ruby 2.6.3
* Rails 5.2.3

# cloneから起動まで

* ローカルへclone
 
  `$ git clone https://github.com/ShunTakahashi/Inst_clone.git`

  `$ cd Inst_clone`

* サーバー起動

  `$ bundle exec rails s`
  
 * TOPページへ
 
   http://localhost:3000/

# 使用方法

 * 会員登録からログイン

1. 会員登録
    
   * 実際にお使いのメールアドレスだと投稿時に確認メールが送信されますので是非。

1. ログイン

   * ログインするとヘッダーが表示されます。
   
       * 左から投稿一覧ページ、投稿ページ、いいね！一覧ページ、ユーザー情報ページ
       
* 投稿機能(ログイン状態のみ可能)

1. 投稿

        * 画像は必須ですが、文章は任意です。
        * 投稿が完了すると登録したメールアドレスに投稿完了メールが送信されます。
    
1.  投稿一覧ページからの確認

        * 投稿一覧ページ内の画像をクリックすると投稿詳細ページへ
        * ログイン中ユーザー投稿の場合、編集と削除リンクが表示されます。
1. ユーザー情報ページからの確認

        * ヘッダーからユーザー情報ページへ飛ぶと自分のみの投稿一覧が表示されます。
    
* ユーザー情報の編集機能

1. ヘッダーからユーザー情報ページへ

1. プロフィールを編集ページへ

       *　名前、プロフィール、ユーザーアイコンの編集可能です。
       
1. 編集後の確認
       
       * ユーザー情報ページにユーザープロフィール、ユーザーアイコンが表示されます。
       * 投稿一覧ページの投稿者の横にユーザーアイコンが表示されます。
       * 投稿詳細ページも同様にユーザーアイコンが表示されます。
    
            
___ユーザー間機能___


 ログイン状態の場合はユーザー情報ページからログアウトしてください。


1. 再度新規登録からログインまで行ってください。

* いいね！機能

2. 投稿一覧ページから先程投稿した投稿詳細ページへ。

3. 他のユーザーの投稿詳細ページのみ'いいね！'ボタンが表示されます。
    
       * いいね！一覧ページへ飛ぶといいね！を押した投稿のみが表示されます。
       * 再度投稿詳細ページへ飛ぶといいね！を解除できます。
       
* 他のユーザーのユーザー情報閲覧

      * 投稿一覧ページ等から他の投稿ユーザーをクリックするとユーザー情報を閲覧できます。
      * 他のユーザー情報ページにはユーザー編集、ログアウトリンクは表示されません。
      
