class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  belongs_to :collection
end
