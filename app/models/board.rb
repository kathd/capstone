class Board < ApplicationRecord
  belongs_to :trip
  has_many :items #, inverse_of: :board

  # accepts_nested_attributes_for :items
end
