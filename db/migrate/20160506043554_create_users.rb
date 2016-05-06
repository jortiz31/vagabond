class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :user_id
      t.string :email
      t.string :current_city
      t.string :date_joined

      t.timestamps null: false
    end
  end
end
