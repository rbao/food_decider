class RestaurantDecorator < Draper::Decorator
  delegate_all

  def site_link
    h.link_to "Website", site, target: '_blank' unless site.blank?
  end

  def address_link
    h.link_to address, "http://maps.google.com/?q=#{address}", target: '_blank' unless address.blank?
  end

  def menu_link
    h.link_to "Menu", menu, target: '_blank' unless menu.blank?
  end

  def yelp_link
    h.link_to "Yelp Page", yelp, target: '_blank' unless yelp.blank?
  end
end
