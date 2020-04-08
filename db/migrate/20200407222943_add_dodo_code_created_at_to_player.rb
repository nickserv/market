class AddDodoCodeCreatedAtToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :dodo_code_created_at, :datetime
  end
end
