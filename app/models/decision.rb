class Decision < ActiveRecord::Base

  attr_accessor :restaurant_ids

  has_many :choices, dependent: :destroy

  
  validate :restaurant_ids_valid
  before_save :set_identifier
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

    def set_identifier
      self.identifier = loop do
        random_identifier = rand(36**8).to_s(36)
        break random_identifier unless Decision.where(identifier: random_identifier).exists?
      end
    end

    def set_choices
      restaurant_ids.each do |id|
        choices.build(restaurant_id: id)
      end
    end
end
