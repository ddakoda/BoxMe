class SessionsController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper
  use Rack::MethodOverride

  # Do I need this?!
  get '/pry' do
    binding.pry
  end
  
  #  /sessions
  post '/' do
    user = User.find_by(:username => params[:username])
    if user && user.password == params[:password]
      session[:current_user] = user.id
      redirect '/admin'
    else
      redirect '/'
    end
  end

  delete '/' do
    session[:current_user] = nil
    redirect '/'
  end

end
