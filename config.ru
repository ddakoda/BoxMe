# gems
require 'bundler'
Bundler.require()

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
require './controllers/users_controller'
require './controllers/purchases_controller'
require './controllers/sessions_controller'
require './controllers/welcome_controller'

# run app
map('/api/brands') { run brandsController.new() }
map('/api/users') { run usersController.new() }
map('/api/purchases') { run purchasesController.new() }
map('/sessions') { run SessionsController.new() }

map('/') { run WelcomeController.new() }
