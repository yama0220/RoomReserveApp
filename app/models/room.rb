class Room < ApplicationRecord

  belongs_to :user

  # RoomImageアップローダーと紐付け
  mount_uploader :room_image, RoomImageUploader
  
  validates :room_name, presence: true
  validates :room_info, length: { in: 1..150 }
  validates :room_price, numericality: true
  validates :room_address, presence: true

end
