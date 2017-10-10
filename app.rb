require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = @item
    @session = session
    #add params to the session hash
    #key: item, value: item user entered to the purchase
    #store session hash as an instance variable
  end

end
