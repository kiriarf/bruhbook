class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true
  validates :email, confirmation: true, presence: true
  validates :email_confirmation, presence: true
  validates :password_digest, confirmation: true, presence: true
  validates :password_digest_confirmation, presence: true
end
