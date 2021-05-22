class User < ApplicationRecord
  has_many :collections, dependent: :destroy
  accepts_nested_attributes_for :collections, allow_destroy: true

  validates :email,  presence: true
  validates :email, uniqueness: true
end
