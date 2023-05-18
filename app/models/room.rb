class Room < ApplicationRecord

  belongs_to :user
  has_many :reservations

  # RoomImageアップローダーと紐付け
  mount_uploader :room_image, RoomImageUploader
  
  validates :room_name, presence: true
  validates :room_info, length: { in: 1..150 }
  validates :room_price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :room_address, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["room_name", "room_info", "room_price", "room_address"]
  end

end
