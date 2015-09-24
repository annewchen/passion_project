class Users < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :first_name
      t.string :last_name
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :hashed_password

      t.timestamp
    end
  end
end
