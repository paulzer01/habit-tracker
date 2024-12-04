class User < ApplicationRecord
  has_secure_password

  has_many :categories, dependent: :destroy
  has_many :habits, dependent: :destroy

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
