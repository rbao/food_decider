class Decision < ActiveRecord::Base

  attr_accessor :restaurant_ids

  has_many :choices, dependent: :destroy, order: 'points DESC'
  has_many :restaurants, through: :choices

  
  validate :restaurant_ids_valid
  before_save :set_choices

  def restaurant_ids
    @restaurant_ids ||= []
    @restaurant_ids  
  end

  private
    def restaurant_ids_valid
      exist_count = Restaurant.where(id: restaurant_ids).count
      errors.add(:base, 'Some restaurants are invalid') if exist_count < restaurant_ids.count
    end

    def set_choices
      restaurant_ids.each do |id|
        choices.build(restaurant_id: id)
      end
    end
end
