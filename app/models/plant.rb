class Plant < ApplicationRecord
  has_one :plant_light, dependent: :destroy
  has_one :plant_water, dependent: :destroy
  has_one :light, through: :plant_light
  has_one :water, through: :plant_water
  has_many :user_plants, dependent: :destroy
  has_many :users, through: :user_plants 
  has_many :collection_plants, dependent: :destroy
  has_many :collections, through: :collection_plants

  validates :name, :description, presence: true
  validates :name, uniqueness: true

  def slug
     name.parameterize
  end

  def formatted_name
    name.titleize
  end
end
