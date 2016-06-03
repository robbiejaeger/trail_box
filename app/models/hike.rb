class Hike < ActiveRecord::Base
  belongs_to :location

  validates :date_hiked, presence: true
  validates :route, presence: true
  validates :description, presence: true
end
