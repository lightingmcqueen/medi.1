class Procedure < ActiveRecord::Base
  belongs_to :clinic
  has_many :categories
end
