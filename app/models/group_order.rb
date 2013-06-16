class GroupOrder < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders

  def total_number_of_orders
    orders.count
  end

  def total_dollar_amount
    orders.map(&:total).inject(:+) || 0
  end

end
