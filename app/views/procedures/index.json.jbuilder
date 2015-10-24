json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :title, :description, :clinic_id
  json.url procedure_url(procedure, format: :json)
end
