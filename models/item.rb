class Item < ActiveRecord:: Base
  belongs_to :brand
  has_many :purchases
  has_many :users, through: :purchases
end
