class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :name, :email, uniqueness: true
  validates :name, length: { maximum: 32 }
  validates :email, length: { maximum: 64 }
  validates :password, length: { maximum: 64 }
end
