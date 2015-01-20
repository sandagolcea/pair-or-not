require 'sinatra/base'

class PairOrNot < Sinatra::Base
  get '/' do
    'Hello PairOrNot!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
