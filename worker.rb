require 'sidekiq'

Sidekiq.configure_client do |config|
        config.redis = { 'db' => 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { 'db' => 1 }
end

class MyWorker
  include Sidekiq::Worker

  def perform(param)
    sleep 5
    puts "Things are happening. #{param}"
  end
end

