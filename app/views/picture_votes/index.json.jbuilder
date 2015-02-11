json.array!(@picture_votes) do |picture_vote|
  json.extract! picture_vote, :id, :direction, :user, :picture_id
  json.url picture_vote_url(picture_vote, format: :json)
end
