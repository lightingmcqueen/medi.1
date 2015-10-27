class Clinic < ActiveRecord::Base
  has_one :user
  has_many :procedures

has_attached_file :asset, photos: {thumb: "100x100#"}
  	
	validates_attachment_content_type :photos, :content_type => /\Aimage\/.*\Z/
end
