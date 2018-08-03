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
    binding.pry
    @session = session
    @session["item"] = params[:item]
    erb :checkout
  end
end
