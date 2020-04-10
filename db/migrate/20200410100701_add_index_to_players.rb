class AddIndexToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_index :players, :friend_code, unique: true
  end
end
