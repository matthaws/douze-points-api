class AddLanguageToEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :language, :string
  end
end
