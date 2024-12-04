class Habit < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :completions, dependent: :destroy

  validates :name, presence: true
  validates :frequency_type, presence: true, inclusion: { in: [ "daily", "weekly", "monthly" ] }
  validates :frequency_count, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def current_streak
    streak || 0
  end

  def update_streak(completed_today)
    if completed_today
      self.streak = (streak || 0) + 1
      self.best_streak = [ best_streak || 0, streak ].max
    else
      self.streak = 0
    end
    save
  end
end
