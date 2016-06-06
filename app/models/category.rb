class Category < ActiveRecord::Base
  has_many :categories_hikes
  has_many :hikes, through: :categories_hikes

  validates :name, presence: true
end
