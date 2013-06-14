json.array!(@orders) do |order|
  json.extract! order, :item, :price, :note, :group_id
  json.url order_url(order, format: :json)
end