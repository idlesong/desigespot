json.array!(@products) do |product|
  json.extract! product, :id, :name, :catalog, :tag1, :tag2, :tag3
  json.url product_url(product, format: :json)
end
