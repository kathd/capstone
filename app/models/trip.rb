class Trip < ApplicationRecord
  belongs_to :user
  has_many :boards
  has_many :transportations
  has_many :lodgings
end
