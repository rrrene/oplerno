class Cart < ActiveRecord::Base
  has_one :order
  attr_accessible :total_price, :purchased_at
end
