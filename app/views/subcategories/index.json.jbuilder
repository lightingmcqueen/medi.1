json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :procedure_id, :category_id, :name, :description
  json.url subcategory_url(subcategory, format: :json)
end
