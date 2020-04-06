class AddDodoCodeToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :dodo_code, :string
  end
end
