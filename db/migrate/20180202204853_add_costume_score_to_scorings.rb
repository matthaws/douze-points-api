class AddCostumeScoreToScorings < ActiveRecord::Migration[5.1]
  def change
    add_column :scorings, :costume_score, :integer
  end
end
