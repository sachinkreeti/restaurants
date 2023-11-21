class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.datetime :reservation_date
      t.integer :party_size
      t.string :user_name

      t.timestamps
    end
  end
end
