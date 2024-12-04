class Category < ApplicationRecord
  belongs_to :user
  has_many :habits, dependent: :destroy

  validates :name, presence: true
  validates :color, presence: true
end
