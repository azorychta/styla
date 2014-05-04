json.array!(@collections) do |collection|
  json.extract! collection, :id, :name, :price, :picture
  json.url collection_url(collection, format: :json)
end
