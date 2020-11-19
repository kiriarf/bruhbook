class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :name, presence: true
  validates :email, confirmation: true, presence: true
  validates :email_confirmation, presence: true
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true
end
