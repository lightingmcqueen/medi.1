class AddAttachmentPhotosToClinics < ActiveRecord::Migration
  def self.up
    change_table :clinics do |t|
      t.attachment :photos
    end
  end

  def self.down
    remove_attachment :clinics, :photos
  end
end
