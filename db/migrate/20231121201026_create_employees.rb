class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
