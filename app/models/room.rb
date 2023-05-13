class Room < ApplicationRecord

  belongs_to :user
  
  validates :room_name, presence: true
  validates :room_info, length: { in: 1..100 }
  validates :room_price, numericality: true
  validates :room_address, presence: true

end
