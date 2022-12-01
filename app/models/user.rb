class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { maximum: 32 }
  validates :email, length: { maximum: 64 }
  validates :password, length: { maximum: 64 }
end
