class AddFrequencyCountToHabits < ActiveRecord::Migration[8.0]
  def change
    add_column :habits, :frequency_count, :integer
  end
end
