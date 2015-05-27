class Brand < ActiveRecord:: Base
  has_many :purchases
  has_many :users, through: :purchases
  has_many :items
end
