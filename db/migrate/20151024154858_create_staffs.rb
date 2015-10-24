class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.text :description
      t.string :speciality
      t.references :user, index: true

      t.timestamps
    end
  end
end
