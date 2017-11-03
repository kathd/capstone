class Item < ApplicationRecord
  belongs_to :board

  validates :item_type, presence: true
  validates :price, numericality: true
  validates :description, length: {maximum: 500}

end
