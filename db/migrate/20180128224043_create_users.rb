class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, presence: true
      t.text :bio
      t.string :avatar_url
      t.string :email
      t.string :uid
      t.string :provider
      t.string :oauth_token, :string
      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :uid
    add_index :users, :provider
  end
end
