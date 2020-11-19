class User < ApplicationRecord
  has_secure_password
  has_many :posts

  has_many :likes, dependent: :destroy
  has_many :bullshits, dependent: :destroy

  validates :name, presence: true
  validates :email, confirmation: true, presence: true, uniqueness: true
  validates :email_confirmation, presence: true
  validates :password, confirmation: true, presence: true
  validates :password_confirmation, presence: true

end
