class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :title
      t.text :description
      t.references :clinic, index: true

      t.timestamps
    end
  end
end
