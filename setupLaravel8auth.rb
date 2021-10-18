# JetStreamのインストール
`composer require laravel/jetstream`

# JSのパッケージをインストール
print "Vue.jsやReactを使用しますか？yesかnoを入力してください："
is_useJS = gets

if is_useJS === 'yes'
    `php artisan jetstream:install inertia`
else
    `php artisan jetstream:install livewire`
end

# マイグレーションを実行
`php artisan migrate`
# JSとCSSをビルド
`npm install && npm run dev`

# ログインフォームの日本語化
`mkdir -p ./resources/lang/ja`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/auth.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/pagination.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/passwords.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/validation.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/validation-attributes.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/validation-inline.php ./resources/lang/ja/`
`cp /Users/tomixy/Downloads/lang-master/locales/ja/ja.json ./resources/lang/`

# コンポーネントの編集を可能にする
`php artisan vendor:publish --tag=jetstream-views`