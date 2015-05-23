    # ** GEMS **
    require 'bundler'
    Bundler.require()

    # ** CONNECTION **
    ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'box'
    )

    # ** MODELS **
    require './models/user'
    require './models/brand'
    require './models/item'
    require './models/purchase'

  namespace :db do

    # Make 'admin user'
    desc "Create Admin User"
    task :create_user do
      user = User.new({username: 'admin'})
      user.password='password'
      user.save!
    end

    # Make 'non-admin user'
    desc 'Create user'
      task :create_user do
      user = user.new({username: 'user'})
      user.password='password'
      user.save!
    end

    # Make a 'purchase'
    namespace :demo do
      desc 'purchase'
      task :purchase do
      puts 'purchase'
    end

    # Make 'nil'
    desc 'Generate Nil'
      task :nil_purchase do
      Item.create({name: 'nil'})
    end

    # Populate database with data
    desc "Fill Database some Junk Data"
      task :junk_data do
    end

    # Make random 'boxes' to buy
    boxes = ['Cat food', 'Coffee', 'Bathing Suits', 'Vegan Cookies']
    boxes_add_on = ['Cat toys', 'Mugs', 'Leashes', 'Cook Book']
    # sizes = ['Starter', 'Small', 'Large', 'Deluxe']
      (rand(5..20)).times do
        Brand.create({
          name: ( boxes.sample + ' ' + boxes_add_on.sample),
          # size: sizes.sample
        })
    end

    # Make a random 'user'
    (rand(5..20)).times do |num|
      User.create({
        type_number: num,
        is_paid: [true, false, false].sample
        })
    end

    # Make random 'items'
    item = Item.all
    brands = Brand.all
    (rand(5..20)).times do |num|
      Item.create({
        user: users.sample,
        brand: brand.sample
        })
    end

    # make 'purchases'
    desc 'Generate purchases'
      task :create_item do
        20.times { Item.create({name: Faker::Name.name}) }
    end

    # make 'purchase of a box'
    desc 'boxes to buy'
      task :gen_purchase do
        Purchase.create({name: 'purchase'})
        Purchase.create({name: 'purchase'})
    end

  end


    # DROP THE DATABASE
    desc 'Empty Database'
      task :destroy_all do
        Brand.destroy_all
        User.destroy_all
        Item.destroy_all
        Purchase.destroy_all
    end

  end
