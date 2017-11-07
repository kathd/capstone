class Trip < ApplicationRecord
  belongs_to :user
  has_many :boards #, inverse_of: :trip 
  # dependent: :restrict_with_error #causes an error to be added to the owner if there are any associated objects
  has_many :transportations
  has_many :lodgings

  # validates :trip_title, presence: true


  # geocoded_by :address
  # after_validation :geocode

  # def address
  #   location
  # end

  validate :start_date_cannot_be_in_the_past, :end_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if
      !start_date.blank? and start_date < Date.today
  end

  def end_date_cannot_be_in_the_past
    errors.add(:end_date, "can't be in the past") if
      !end_date.blank? and end_date < start_date
  end


  # accepts_nested_attributes_for :boards
end
