json.array!(@replies) do |reply|
  json.extract! reply, :id, :content
  json.url reply_url(reply, format: :json)
end
