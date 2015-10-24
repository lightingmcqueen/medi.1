json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :title, :description, :services, :address_line_1, :address_line_2, :city, :country, :phone_country_code, :zipcode, :ratings, :coordinator, :accreditations_name
  json.url clinic_url(clinic, format: :json)
end
