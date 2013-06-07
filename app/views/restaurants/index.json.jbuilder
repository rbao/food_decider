json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :menu, :address, :phone, :site, :yelp
  json.url restaurant_url(restaurant, format: :json)
end