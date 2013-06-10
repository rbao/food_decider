class Choice < ActiveRecord::Base

  belongs_to :restaurant
  belongs_to :decision
end
