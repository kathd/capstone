class Lodging < ApplicationRecord
  belongs_to :trip

  validate :checkin_date_cannot_be_in_the_past, :checkout_date_cannot_be_in_the_past

  def checkin_date_cannot_be_in_the_past
    errors.add(:checkin_date, "can't be in the past") if
      !checkin_date.blank? and checkin_date < Date.today
  end

  def checkout_date_cannot_be_in_the_past
    errors.add(:checkout_date, "can't be in the past") if
      !checkout_date.blank? and checkout_date < checkin_date
  end

end
