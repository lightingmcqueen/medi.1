class Clinic < ActiveRecord::Base
  has_one :user
  has_many :procedures


  	if Rails.env.development?
		has_attached_file :photos, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
	else
		has_attached_file :photos, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg",
						:storage => :dropbox,
						:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
						:path => ":style/:id_:filename"
	end
	validates_attachment_content_type :photos, :content_type => /\Aimage\/.*\Z/
end
