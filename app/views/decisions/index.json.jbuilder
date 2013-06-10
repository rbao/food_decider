json.array!(@decisions) do |decision|
  json.extract! decision, :id, :name
  json.url decision_url(decision, format: :json)
end