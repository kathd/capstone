class Transportation < ApplicationRecord
  belongs_to :trip

  validate :depart_date_cannot_be_in_the_past, :arrive_date_cannot_be_in_the_past

  def depart_date_cannot_be_in_the_past
    errors.add(:depart_date, "can't be in the past") if
      !depart_date.blank? and depart_date < Date.today
  end

  def arrive_date_cannot_be_in_the_past
    errors.add(:arrive_date, "can't be in the past") if
      !arrive_date.blank? and arrive_date < start_date
  end

end
