class Completion < ApplicationRecord
  belongs_to :habit

  validates :completed_at, presence: true
  validate :no_duplicate_completions_for_same_day

  private

  def no_duplicate_completions_for_same_day
    if habit.completions.where("DATE(completed_at) = ?", completed_at.to_date).exists?
      errors.add(:completed_at, "already has a completion for this day")
    end
  end
end
