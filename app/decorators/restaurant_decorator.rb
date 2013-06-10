class RestaurantDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def site_link
    h.link_to "Website", site unless site.blank?
  end

  def address_link
    h.link_to address, "http://maps.google.com/?q=#{address}" unless address.blank?
  end

  def menu_link
    h.link_to "Menu", menu unless menu.blank?
  end

  def yelp_link
    h.link_to "Yelp Page", yelp unless yelp.blank?
  end

end
