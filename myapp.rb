require 'sinatra'
require './worker.rb'

class Stream
  def each
    100.times { |i| yield "#{i}\n" }
  end
end

get '/' do
  # 'Hello world!'
  MyWorker.perform_async('hard')
  Stream.new
end
