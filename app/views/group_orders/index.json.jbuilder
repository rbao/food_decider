json.array!(@group_orders) do |group_order|
  json.extract! group_order, :name
  json.url group_order_url(group_order, format: :json)
end