json.array!(@likes) do |like|
  json.extract! like, :id, :designer_id, :topic_id
  json.url like_url(like, format: :json)
end
