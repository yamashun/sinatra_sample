# Sinatra sample
sinataを使ってリクエストを受けて簡単な非同期処理を実行するサンプル

## 起動
bundle install後に以下のコマンドで起動

### redis

```sh
$ redis-server
```

### sidekiq

```sh
$ sidekiq -r ./worker.rb -P ./tmp/sidekiq.pid
```

### sinatra

```sh
$ ruby myapp.rb
```

