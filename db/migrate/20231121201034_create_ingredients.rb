class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
