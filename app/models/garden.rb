class Garden < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :title, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # validates :address
  # validates :description
  # validates :surface
  # validates :price
  # validates :product, inclusion: {in:["tomates", "salades", "haricots", "choux", "radis", "courgettes"]}
end
