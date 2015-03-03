class Lift < ActiveRecord::Base
  belongs_to :lift_request
  has_one :origin, through: :lift_request
  has_one :destination, through: :lift_request
  belongs_to :driver

  def pickup_time
    pickup_at.strftime("%l:%M%p")
  end
end
