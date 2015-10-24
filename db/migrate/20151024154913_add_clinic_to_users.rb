class AddClinicToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :clinic, index: true
  end
end
