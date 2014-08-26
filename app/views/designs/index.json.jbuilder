json.array!(@designs) do |design|
  json.extract! design, :id, :name, :stage, :style, :household, :author
  json.url design_url(design, format: :json)
end
