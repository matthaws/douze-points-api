class CreateScoresheets < ActiveRecord::Migration[5.1]
  def change
    create_table :scoresheets do |t|
      t.integer :user_id, presence: true
      t.string :name, presence: true
      t.integer :contest_id, presence: true
      t.string :type
      t.timestamps
    end
    add_index :scoresheets, [:user_id, :contest_id]
    add_index :scoresheets, :contest_id
  end
end
