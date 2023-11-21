class AddUuidToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :uuid, :string
  end
end
