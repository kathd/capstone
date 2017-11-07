class Board < ApplicationRecord
  belongs_to :trip
  has_many :items #, inverse_of: :board

  # validates :board_title, presence: true

  # accepts_nested_attributes_for :items
end
