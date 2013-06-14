class Order < ActiveRecord::Base
  belongs_to :group, class_name: GroupOrder
end
