require 'sinatra'
require './worker.rb'

configure {
  set :server, :puma
}

class MyApp < Sinatra::Base
  get '/hello' do
    'Hello World!!'
  end

  post '/deploy' do
    MyWorker.perform_async('hard')
    'start async task'
  end

  run! if app_file == $0
end
