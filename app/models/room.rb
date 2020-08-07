class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  validates :name, presence: true #空文字を制限
end
