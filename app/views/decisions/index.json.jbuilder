json.array!(@decisions) do |decision|
  json.extract! decision, :name, :identifier
  json.url decision_url(decision, format: :json)
end