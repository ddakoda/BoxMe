class UsersController < Sinatra::Base
  enable  :sessions

  def user_params
    return params[:user] if params[:user]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['user'] || body_data
  end

  # /api/users
  get '/' do
    users = User.all
    content_type :json
    users.to_json(include: :foods)
  end

  get '/:id' do
    user = User.find(params[:id])
    content_type :json
    user.to_json(include: :foods)
  end

  post '/' do
    user = User.create(user_params)
    content_type :json
    user.to_json(include: :foods)
  end

  patch '/:id' do
    user = User.find(params[:id])
    user.update(user_params)
    content_type :json
    user.to_json(include: :foods)
  end

  put '/:id' do
    user = User.find(params[:id])
    user.update(user_params)
    content_type :json
    user.to_json(include: :foods)
  end

  delete '/:id' do
     user.destroy(params[:id])
     content_type :json
     {success: "ok"}.to_json
  end


end
