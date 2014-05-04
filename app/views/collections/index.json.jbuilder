json.array!(@collections) do |collection|
  json.extract! collection, :name, :price, :picture, :product1_id, :product2_id, :product3_id, :product4_id, :product5_id, :product6_id
  json.url collection_url(collection, format: :json)
end