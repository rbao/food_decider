class GroupOrder < ActiveRecord::Base
  belongs_to :restaurant
  has_many :orders

  def total_number_of_orders
    orders.count
  end

  def total_dollar_amount
    t = 0
    orders.each do |order|
      t += order.total unless order.total.blank?
    end
    t
  end

end
