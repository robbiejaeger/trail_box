class CategoriesHike < ActiveRecord::Base
  belongs_to :hike
  belongs_to :category
end
