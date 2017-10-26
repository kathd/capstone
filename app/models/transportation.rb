class Transportation < ApplicationRecord
  belongs_to :trip

  validate :start_date_cannot_be_in_the_past, :end_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if
      !start_date.blank? and start_date < Date.today
  end

  def end_date_cannot_be_in_the_past
    errors.add(:end_date, "can't be in the past") if
      !end_date.blank? and end_date < start_date
  end

end
