class CreateRounds < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :winner, {null: false}
      t.integer :loser, {null: false}

      t.timestamps
    end
  end
end
