class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.string :flag_url
      t.boolean :big_five, default: false
      t.timestamps
    end
    add_index :countries, :name
  end
end
