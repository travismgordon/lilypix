json.array!(@pictures) do |picture|
  json.extract! picture, :id, :title, :caption, :url, :vote, :hot
  json.url picture_url(picture, format: :json)
end
