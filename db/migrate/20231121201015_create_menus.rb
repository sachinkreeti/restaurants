class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :dish_name
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
