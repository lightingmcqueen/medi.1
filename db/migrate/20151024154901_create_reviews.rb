class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.references :user, index: true
      t.references :clinic, index: true
      t.string :ratings

      t.timestamps
    end
  end
end
