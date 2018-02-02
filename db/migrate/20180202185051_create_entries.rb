class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.integer :country_id, presence: true
      t.integer :contest_id, presence: true
      t.string :artist
      t.string :song_title
      t.integer :final_score
      t.integer :final_ranking
      t.string :video_url
      t.boolean :finalist, default: false
      t.timestamps
    end
    add_index :entries, :country_id
    add_index :entries, :contest_id
  end
end
