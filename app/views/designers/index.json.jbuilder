json.array!(@designers) do |designer|
  json.extract! designer, :id, :name, :sex, :prefer_style, :prefer_household, :photo, :location
  json.url designer_url(designer, format: :json)
end
