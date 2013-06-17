class OrderDecorator < Draper::Decorator
  delegate_all
  
  decorates_association :restaurant
end
