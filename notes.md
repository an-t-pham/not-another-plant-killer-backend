User
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :collections
  :name - string

User_plant
  belongs_to :user
  belongs_to :plant
  :user_id - integer, :plant_id - integer
  

Collection
  belongs_to :user
  has_many :collection_plants
  has_many :plants, through: :collection_plants

  :name - string

Collection_plant
  belongs_to :plan
  belongs_to :collection

  :plant_id - integer, :collection_id - integer

Plant
  has_one: :plant_light
  has_one: :plant_water
  has_one :light, through: :plant_light
  has_one :water, through: :plant_water
  has_many :user_plants
  has_many :users, through: :user_plants
  has_many :collection_plants
  has_many :collections, through: :collection_plants
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
