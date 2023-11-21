class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :contact_person
      t.string :contact_number

      t.timestamps
    end
  end
end
