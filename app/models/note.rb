class Note < ApplicationRecord
  acts_as_mappable
  belongs_to :user

  def drop(location)
    self.user = nil
    self.lat = location.lat
    self.lng = location.lng
  end

  def grab(user)
    self.user = user
  end
end
