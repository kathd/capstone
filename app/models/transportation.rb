class Transportation < ApplicationRecord
  belongs_to :trip

  validates :transpo_type, :transpo_name, presence: true
  validates :price, numericality: true
  validates :notes, length: {maximum: 300}
  validate :depart_date_cannot_be_in_the_past

  def depart_date_cannot_be_in_the_past
    errors.add(:depart_date, "can't be in the past") if
      !depart_date.blank? and depart_date < Date.today
  end

end
