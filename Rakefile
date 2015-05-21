  # ** GEMS **
  require 'bundler'
  Bundler.require()

  # ** CONNECTION **
  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'rest'
  )

  # ** MODELS **
  require './models/1'
  require './models/2'
  require './models/3'

  # Goal is to say 'purchase'
  namespace :demo do
    desc 'purchase'
    task :purchase do
    puts 'purchase'
  end

  namespace :db do

  desc 'Generate Nil'
    task :nil_purchase do
    Item.create({name: 'nil'})
  end

  desc 'Generate User'
    task :user_order do
      10.times { Order.create({name: Faker::Name.name}) }
  end

  desc 'populate items'
    task :gen_items do
      Purchase.create({name: 'purchase'})
      Purchase.create({name: 'purchase'})
  end

  desc 'Empty Database'
    task :destroy_all do
      1.destroy_all
      2.destroy_all
      3.destroy_all
  end

  desc 'Create User'
    task :create_user do
    user = User.new({username: 'dakoduh'})
    user.password='deedub'
    user.save!
  end

  desc 'Fill Database some Junk Data'
  task :junk_data do

  # Generate random 1
  1s_starting = []
    1_ending = []
    cuisines = []
    rand(5..15).times do
      1.create({
        name: ( purchases_starting.sample + ' ' + purchase_ending.sample),
        cents: rand(500..1500),
        purchase: purchases.sample
        })
      end

  # Generate random 2
  rand(5..15).times do |num|
    Purchase.create({
      1_number: num,
      is_paid: [true, false, false].sample
      })
    end

  # Generate random 3
  parties = Party.all
    foods = Food.all
    rand(10..35).times do |num|
      Order.create({
        party: parties.sample,
        food: foods.sample
        })
      end

    end
  end
