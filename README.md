# Sinatra & Puma sample
SinataとPumaを使ってリクエストを受けて簡単な非同期処理を実行するサンプル

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

### puma & sinatra

```sh
$ bundle exec pumactl start
or
$ bundle exec puma -d -e production -C config/puma.rb
```
