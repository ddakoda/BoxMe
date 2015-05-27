class DemoBrandsController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  get '/:brand' do
    brand_name = params[:brand]
    @brand = Brand.find_by({name: brand_name})
    erb :demo_index
  end

end
