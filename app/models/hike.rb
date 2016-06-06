class Hike < ActiveRecord::Base
  belongs_to :location
  has_many :categories_hikes
  has_many :categories, through: :categories_hikes

  validates :date_hiked, presence: true
  validates :route, presence: true
  validates :description, presence: true
end
