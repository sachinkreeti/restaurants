class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :discount_percentage

      t.timestamps
    end
  end
end
