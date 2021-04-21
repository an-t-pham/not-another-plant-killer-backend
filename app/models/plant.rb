class Plant < ApplicationRecord
  has_one :plant_light
  has_one :plant_water
  has_one :light, through: :plant_light
  has_one :water, through: :plant_water
  has_many :user_plants
  has_many :users, through: :user_plants
  has_many :collections, through: :user_plants

  validates :name, :description, presence: true
end
