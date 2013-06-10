class Deciding < ActiveRecord::Base

  attr_accessor :restaurant_ids

  has_many :potential_decision

  before_save :set_identifier

  def restaurant_ids
    @restaurant_ids ||= []
    @restaurant_ids  
  end

  private
    def set_identifier
      self.token = loop do
        random_token = SecureRandom.urlsafe_base64(5).downcase
        break random_token unless Deciding.where(token: random_token).exists?
      end
    end
end
