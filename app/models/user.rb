class User < ApplicationRecord
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :collections, through: :user_plants

  validates :name, presence: true
end
