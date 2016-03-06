json.array!(@adjectives) do |adjective|
  json.extract! adjective, :id, :name, :string
  json.url adjective_url(adjective, format: :json)
end
