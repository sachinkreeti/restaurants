class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.text :content
      t.integer :rating
      t.string :user_name

      t.timestamps
    end
  end
end
