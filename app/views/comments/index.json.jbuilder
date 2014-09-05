json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :label
  json.url comment_url(comment, format: :json)
end
