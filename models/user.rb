class User < ActiveRecord:: Base
  has_many :brands, :through => :items
  has_many :items
end
