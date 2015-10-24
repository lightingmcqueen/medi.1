json.array!(@categories) do |category|
  json.extract! category, :id, :title, :description, :procedure_id
  json.url category_url(category, format: :json)
end
