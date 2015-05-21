# gems
require 'bundler'
Bundler.require()

# connect
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rest'
)

#models


# sessions
enable(:sessions)

# helpers
require './helpers/session_helpers'

# controllers


# run app
