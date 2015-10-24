class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.references :procedure, index: true

      t.timestamps
    end
  end
end
