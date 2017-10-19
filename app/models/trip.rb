class Trip < ApplicationRecord
  belongs_to :user
  has_many :boards, inverse_of: :trip 
  # dependent: :restrict_with_error #causes an error to be added to the owner if there are any associated objects
  has_many :transportations
  has_many :lodgings

  accepts_nested_attributes_for :boards
end
