class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :city_name
      t.integer :rating
      t.string :description

      t.timestamps null: false
    end
  end
end
