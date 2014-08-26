json.array!(@requests) do |request|
  json.extract! request, :id, :name, :graph2d, :response
  json.url request_url(request, format: :json)
end
