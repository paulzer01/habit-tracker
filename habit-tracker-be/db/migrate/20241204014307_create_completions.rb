class CreateCompletions < ActiveRecord::Migration[8.0]
  def change
    create_table :completions do |t|
      t.datetime :completed_at
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
