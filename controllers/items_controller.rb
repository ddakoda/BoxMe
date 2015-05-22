class ItemsController < Sinatra::Base
  enable  :sessions

  def item_params
    return params[:item] if params[:item]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['item'] || body_data
  end

  # /api/items
  get '/' do
    items = Item.all
    content_type :json
    items.to_json
  end

  get '/:id' do
    item = Item.find(params[:id])
    content_type :json
    item.to_json
  end

  post '/' do
    item = Item.create(item_params)
    content_type :json
    item.to_json
  end

  patch '/:id' do
    item = Item.find(params[:id])
    item.update(item_params)
    content_type :json
    item.to_json
  end

  put '/:id' do
    item = Item.find(params[:id])
    item.update(item_params)
    content_type :json
    item.to_json
  end

  delete '/:id' do
     item.destroy(params[:id])
     content_type :json
     {success: "ok"}.to_json
  end

end
