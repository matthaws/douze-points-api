class CreateContests < ActiveRecord::Migration[5.1]
  def change
    create_table :contests do |t|
      t.integer :year, null: false
      t.integer :winning_entry_id
      t.string :location
      t.integer :host_country_id, null: false
      t.timestamps
    end
    add_index :contests, :winning_entry_id
    add_index :contests, :host_country_id

  end
end
