class Vote
  include ActiveModel::Model

  attr_accessor :decision, :restaurant_ids

  def votable_restaurants
    decision.restaurants
  end

  def restaurant_ids
    @restaurant_ids ||= []
    @restaurant_ids  
  end
end