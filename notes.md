User
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :collections, through: :user_plants
  :name - string

User_plant
  belongs_to :user
  belongs_to :plant
  belongs_to :collection
  :user_id - integer, :plant_id - integer, collection_id - integer
  

Collection
  has_many :user_plants
  has_many :plants, through: :user_plants

  :name - string

Plant
  has_one: :plant_light
  has_one: :plant_water
  has_one :light, through: :plant_light
  has_one :water, through: :plant_water
  has_many :user_plants
  has_many :users, through: :user_plants
  has_many :collections, through: :user_plants
  :name - string, :aka - string, :description - string, :size_pot - integer, :pet-friendly - boolean

Light
  has_many :plant_lights
  has_many :plants, through: :plant_lights
  :level - integer , :description - string, :ideal_location - string

Water
  has_many :plant_waters
  has_many :plants, through: :plant_waters
  :level - integer , :description - string, :care - integer

PlantLight
  belongs_to :plant
  belongs_to :light
  :light_id - integer, :plant_id - integer

PlantWater
  belongs_to :plant
  belongs_to :light
  :water_id - integer, :plant_id - integer
