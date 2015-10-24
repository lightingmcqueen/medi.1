class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :title
      t.string :description
      t.text :services
      t.text :address_line_1
      t.text :address_line_2
      t.string :city
      t.string :country
      t.string :phone_country_code
      t.string :zipcode
      t.string :ratings
      t.string :coordinator
      t.string :accreditations_name

      t.timestamps
    end
  end
end
