class Collection < ApplicationRecord
  has_many :collection_plants
  has_many :plants, through: :collection_plants
  belongs_to :user
  
end
