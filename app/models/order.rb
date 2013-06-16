class Order < ActiveRecord::Base
  belongs_to :group_order

  validates :name, presence: true
  validates :item, presence: true
  validates :price, numericality: true
  validates :tax, numericality: true, if: :no_error_on_price
  validates :total, numericality: true, if: :no_error_on_price

  delegate :restaurant, :tax_rate, :to => :group_order

  private
    def no_error_on_price
      !errors.has_key?(:price)
    end
end
