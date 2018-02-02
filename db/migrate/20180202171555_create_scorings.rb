class CreateScorings < ActiveRecord::Migration[5.1]
  def change
    create_table :scorings do |t|
      t.integer :scoresheet_id, presence: true
      t.integer :entry_id, presence: true
      t.integer :song_score
      t.integer :dance_score
      t.integer :cheese_score
      t.integer :bonus_points
      t.text :bonus_comment
      t.text :score_note
      t.timestamps
    end
    add_index :scorings, [:scoresheet_id, :entry_id]
  end
end
