class Light < ApplicationRecord
  has_many :plant_lights, dependent: :destroy
  has_many :plants, through: :plant_lights

  validates :level, :description, presence: true

end
