class Event < ApplicationRecord
  validate :expiration_date_cannot_be_in_the_past

  belongs_to :user

  def expiration_date_cannot_be_in_the_past
    if event_date < Time.now
      errors.add(:event_date, "can't be in the past")
    end
  end
end
