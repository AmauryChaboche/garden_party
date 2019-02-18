class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user
end
