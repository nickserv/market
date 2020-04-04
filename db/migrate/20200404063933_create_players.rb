class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :island
      t.string :name
      t.string :nickname
      t.string :friend_code

      t.timestamps
    end
  end
end
