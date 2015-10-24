class Clinic < ActiveRecord::Base
  has_one :user
  has_many :procedures
end
