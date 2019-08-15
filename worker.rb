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
    puts "Things are happening. #{param}"
    `sh #{Dir.getwd}/scripts/deploy.sh`
    puts $?
  end
end

