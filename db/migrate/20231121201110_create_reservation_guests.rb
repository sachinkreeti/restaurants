class CreateReservationGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_guests do |t|
      t.references :reservation, null: false, foreign_key: true
      t.string :guest_name
      t.string :contact_number
      t.string :email

      t.timestamps
    end
  end
end
