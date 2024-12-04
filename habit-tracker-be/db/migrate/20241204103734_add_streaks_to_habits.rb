class AddStreaksToHabits < ActiveRecord::Migration[8.0]
  def change
    add_column :habits, :streak, :integer
    add_column :habits, :best_streak, :integer
  end
end
