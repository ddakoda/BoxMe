# gems
require 'bundler'
Bundler.require()


require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack


# connect
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'box'
)

# helpers
require './helpers/session_helpers'

# models
require './models/brand'
require './models/user'
require './models/item'
require './models/purchase'

# sessions
# enable(:sessions)

# controllers
require './controllers/brands_controller'
require './controllers/demo_brands_controller'
require './controllers/users_controller'
require './controllers/items_controller'
require './controllers/purchases_controller'
require './controllers/sessions_controller'
require './controllers/welcome_controller'

# run app
map('/demo') { run DemoBrandsController.new() }
map('/api/brands') { run BrandsController.new() }
map('/api/users') { run UsersController.new() }
map('/api/items') { run ItemsController.new() }
map('/sessions') { run SessionsController.new() }

map('/') { run WelcomeController.new() }
