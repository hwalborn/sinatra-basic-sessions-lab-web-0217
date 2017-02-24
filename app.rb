require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "the secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[params.keys[0]] = params[:item]
    @session = session
    erb :show
  end
end
