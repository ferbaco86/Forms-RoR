class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 4 }
  validates :email, :password, presence: true
end
