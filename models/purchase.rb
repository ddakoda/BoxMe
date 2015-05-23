class Purchase < ActiveRecord:: Base

  include BCrypt

  belongs_to :user
  belongs_to :item

end
