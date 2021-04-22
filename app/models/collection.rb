class Collection < ApplicationRecord
  has_many :collection_plants, dependent: :destroy
  has_many :plants, through: :collection_plants, dependent: :destroy
  belongs_to :user
  
end
