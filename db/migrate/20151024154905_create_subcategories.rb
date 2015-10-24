class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.references :procedure, index: true
      t.references :category, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
