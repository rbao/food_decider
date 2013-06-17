class GroupOrderDecorator < Draper::Decorator
  delegate_all
  
  decorates_association :restaurant

  def restaurant_name
    restaurant.name
  end
end
