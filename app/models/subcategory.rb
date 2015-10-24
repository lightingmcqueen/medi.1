class Subcategory < ActiveRecord::Base
  belongs_to :procedure
  belongs_to :category
end
