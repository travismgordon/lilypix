json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :words, :vote, :picture_id
  json.url comment_url(comment, format: :json)
end
