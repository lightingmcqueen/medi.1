class Category < ActiveRecord::Base
  belongs_to :procedure
  has_many :subcategories
end
