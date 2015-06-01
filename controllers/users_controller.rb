class UsersController < Sinatra::Base
  enable  :sessions

  def user_params
    return params[:user] if params[:user]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['user'] || body_data
  end

  # Do I need this?!
  get '/pry' do
    binding.pry
  end

  # /api/users
  get '/' do
    users = User.all
    content_type :json
    users.to_json(include: :brands)
  end

  get '/:id' do
    user = User.find(params[:id])
    content_type :json
    user.to_json(include: :brands)
  end

  post '/' do
    user = User.create(user_params)
    content_type :json
    user.to_json(include: :brands)
  end

  patch '/:id' do
    user = User.find(params[:id])
    user.update(user_params)
    content_type :json
    user.to_json(include: :brands)
  end

  put '/:id' do
    user = User.find(params[:id])
    user.update(user_params)
    content_type :json
    user.to_json(include: :brands)
  end

  delete '/:id' do
     User.destroy(params[:id])
     content_type :json
     {success: 'ok'}.to_json
  end


end
