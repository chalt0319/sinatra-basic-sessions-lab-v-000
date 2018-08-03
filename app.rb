require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "its_a_secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    sessions["item"] = params[:item]
    @item = sessions
    erb :checkout
  end
end
