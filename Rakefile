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

    # Populate database with data
    desc "Fill Database some Junk Data"
      task :junk_data do

      # Make random 'brand' to buy
      brand = ['Cat food', 'Coffee', 'Bathing Suits', 'Vegan Cookies']
      brand_add_on = ['Cat toys', 'Mugs', 'Leashes', 'Cook Book']
      (rand(5..20)).times do
        Brand.create({
          name: ( brand.sample + ' ' + brand_add_on.sample),
        })
      end

      items = ['thangs', 'things', 'tings']
      (rand(5..20)).times do
        Item.create({
          brand: Brand.all.sample,
          name: items.sample,
        })
      end


      (rand(5..20)).times do
        user = User.new({
          name: Faker::Internet.user_name,
        })
        user.password = Faker::Internet.password
        user.save
      end

      (rand(5..20)).times do
        Purchase.create({
          user: User.all.sample,
          item: Item.all.sample
        })
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
