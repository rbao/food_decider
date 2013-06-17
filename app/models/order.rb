class Order < ActiveRecord::Base
  belongs_to :group_order

  validates :name, presence: true
  validates :item, presence: true
  validates :price, numericality: true, allow_blank: true
  validates :tax, numericality: true, if: :no_error_on_price_and_price_is_not_blank
  validates :total, numericality: true, if: :no_error_on_price_and_price_is_not_blank

  delegate :restaurant, :tax_rate, :to => :group_order

  private
    def no_error_on_price_and_price_is_not_blank
      !errors.has_key?(:price) && !price.blank?
    end
end
