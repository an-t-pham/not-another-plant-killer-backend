class Water < ApplicationRecord
  has_many :plant_waters, dependent: :destroy
  has_many :plants, through: :plant_waters

  validates :level, :description, presence: true
end
