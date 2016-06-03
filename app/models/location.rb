class Location < ActiveRecord::Base
  has_many :hikes

  validates :name, presence: true, uniqueness: true
end
