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
    require './models/user'


  namespace :db do

    desc "Create Admin User"
    task :create_user do
      user = User.new({username: 'ddub'})
      user.password='password'
      user.save!
    end

    desc "Fill Database some Junk Data"
      task :junk_data do


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

    desc 'Generate user'
      task :user_item do
        10.times { item.create({name: Faker::Name.name}) }
    end

    desc 'boxes to buy'
      task :gen_items do
        Purchase.create({name: 'purchase'})
        Purchase.create({name: 'purchase'})
    end

    desc 'Empty Database'
      task :destroy_all do
        Brand.destroy_all
        User.destroy_all
        Item.destroy_all
        Purchase.destroy_all
    end

    desc 'Create user'
      task :create_user do
      user = user.new({username: 'dakoduh'})
      user.password='deedub'
      user.save!
    end

    end
  end
