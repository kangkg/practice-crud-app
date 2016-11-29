class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, {null: false}
      t.string :username, {null: false}
      t.string :password_hash, {null: false} # this name is important to my bcrypt methods

      t.timestamps(null: false)
    end
  end
end
