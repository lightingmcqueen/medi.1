json.array!(@reviews) do |review|
  json.extract! review, :id, :name, :description, :user_id, :clinic_id, :ratings
  json.url review_url(review, format: :json)
end
