class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.datetime :order_date
      t.decimal :total_amount

      t.timestamps
    end
  end
end
