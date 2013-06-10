json.array!(@decidings) do |deciding|
  json.extract! deciding, :name, :identifier
  json.url deciding_url(deciding, format: :json)
end