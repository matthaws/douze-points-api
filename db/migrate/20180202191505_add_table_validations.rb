class AddTableValidations < ActiveRecord::Migration[5.1]
  def change
    remove_column :scoresheets, :user_id
    remove_column :scoresheets, :name
    remove_column :scoresheets, :contest_id
    add_column :scoresheets, :user_id, :integer, null: false
    add_column :scoresheets, :name, :string, null: false
    add_column :scoresheets, :contest_id, :integer, null: false

    remove_column :scorings, :scoresheet_id
    remove_column :scorings, :entry_id
    add_column :scorings, :scoresheet_id, :integer, null: false
    add_column :scorings, :entry_id, :integer, null: false

    remove_column :entries, :country_id
    remove_column :entries, :contest_id
    add_column :entries, :country_id, :integer, null: false
    add_column :entries, :contest_id, :integer, null: false

  end
end
