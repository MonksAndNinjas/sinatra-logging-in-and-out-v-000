require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params[:username], password: params[:password])

    if @user
      session[:user_id] = @user.id
      redirect '/account'
    end

    erb :error
  end

  get '/account' do
    @current_user = User.find_by(session[:user_id].to_s)

    if @current_user
      erb :account
    end
      redirect '/error'
  end

  get '/logout' do
    session.clear

    redirect '/'
  end

end
