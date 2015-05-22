class BrandsController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper

  def brand_params
    return params[:brand] if params[:brand]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['brand'] || body_data
end

  # Do I need this?!
  get '/pry' do
    binding.pry
  end

  # /api/brands
  get '/' do
    brands = Brand.all
    content_type :json
    brands.to_json
  end

  get '/:id' do
    brand = Brand.find(params[:id])
    content_type :json
    brand.to_json
  end

  post '/' do
    authenticate_api!
    brand = Brand.create(brand_params)
    content_type :json
    brand.to_json
  end

  patch '/:id' do
    authenticate_api!
    brand = Brand.find(params[:id])
    brand.update(brand_params)
    content_type :json
    brand.to_json
  end

  put '/:id' do
    authenticate_api!
    brand = Brand.find(params[:id])
    brand.update(brand_params)
    content_type :json
    brand.to_json
  end

  delete '/:id' do
    authenticate_api!
     brand.destroy(params[:id])
     content_type :json
     {success: "ok"}.to_json
  end

end
