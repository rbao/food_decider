class Order < ActiveRecord::Base
  belongs_to :group, class_name: GroupOrder

  validates :price, numericality: true
end
